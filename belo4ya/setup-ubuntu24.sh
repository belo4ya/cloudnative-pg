#!/usr/bin/env bash

set -euo pipefail

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

log_info() {
  echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
  echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
  echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
  echo -e "${RED}[ERROR]${NC} $1"
}

check_root() {
  if [[ $EUID -eq 0 ]]; then
      log_error "This script should not be run as root. Please run as a regular user with sudo privileges."
      exit 1
  fi
}

update_system() {
  log_info "Updating system packages..."
  sudo apt-get update -y
  sudo apt-get upgrade -y
  log_success "System updated successfully"
}

install_basic_deps() {
  log_info "Installing basic dependencies..."
  sudo apt-get install -y \
      curl \
      wget \
      git \
      make \
      build-essential \
      ca-certificates \
      gnupg \
      lsb-release \
      apt-transport-https \
      software-properties-common \
      jq \
      unzip \
      tar \
      gzip \
      coreutils \
      diffutils \
      findutils \
      gpg \
      pandoc \
      sed \
      util-linux \
      zlib1g
  log_success "Basic dependencies installed"
}

install_docker() {
  log_info "Installing Docker..."

  # Remove old versions
  for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

  # Add Docker's official GPG key:
  sudo apt-get install -y ca-certificates curl
  sudo install -m 0755 -d /etc/apt/keyrings
  sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
  sudo chmod a+r /etc/apt/keyrings/docker.asc

  # Add the repository to Apt sources:
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update -y
  sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

  log_success "Docker installed successfully"
}

install_go() {
  log_info "Installing Go..."

  local GO_VERSION="1.24.5"
  local GO_TARBALL="go${GO_VERSION}.linux-amd64.tar.gz"

  cd /tmp
  wget -q "https://go.dev/dl/${GO_TARBALL}"
  sudo rm -rf /usr/local/go
  sudo tar -C /usr/local -xzf "${GO_TARBALL}"
  rm -f "${GO_TARBALL}"

  if ! grep -q "/usr/local/go/bin" ~/.bashrc; then
      echo 'export PATH=$PATH:/usr/local/go/bin' >> ~/.bashrc
      echo 'export GOPATH=$HOME/go' >> ~/.bashrc
      echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.bashrc
  fi

  export PATH=$PATH:/usr/local/go/bin
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin

  log_success "Go ${GO_VERSION} installed successfully"
}

install_kind() {
  log_info "Installing Kind..."

  KIND_VERSION="v0.29.0"
  curl -Lo ./kind "https://kind.sigs.k8s.io/dl/${KIND_VERSION}/kind-linux-amd64"
  chmod +x ./kind
  sudo mv ./kind /usr/local/bin/kind

  log_success "Kind ${KIND_VERSION} installed successfully"
}

install_kubectl() {
  log_info "Installing kubectl..."

  curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
  chmod +x kubectl
  sudo mv kubectl /usr/local/bin/kubectl

  sudo apt-get install -y kubectx

  log_success "kubectl installed successfully"
}

install_helm() {
  log_info "Installing Helm..."

  curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
  chmod 700 get_helm.sh
  ./get_helm.sh

  log_success "Helm installed successfully"
}

install_go_tools() {
  log_info "Installing Ginkgo..."
  export PATH=$PATH:/usr/local/go/bin
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin
  go install github.com/onsi/ginkgo/v2/ginkgo@latest
  log_success "Ginkgo installed successfully"

  log_info "Installing golangci-lint..."
  curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b "$(go env GOPATH)/bin" v1.61.0
  log_success "golangci-lint installed successfully"

  log_info "Installing goreleaser..."
  echo 'deb [trusted=yes] https://repo.goreleaser.com/apt/ /' | sudo tee /etc/apt/sources.list.d/goreleaser.list
  sudo apt-get update -y
  sudo apt-get install -y goreleaser
  log_success "goreleaser installed successfully"

  log_info "Installing Operator SDK CLI..."
  local OPERATOR_SDK_VERSION="v1.41.1"
  local OPERATOR_SDK_BINARY="operator-sdk_linux_amd64"
  cd /tmp
  curl -LO "https://github.com/operator-framework/operator-sdk/releases/download/${OPERATOR_SDK_VERSION}/${OPERATOR_SDK_BINARY}"
  chmod +x "${OPERATOR_SDK_BINARY}"
  sudo mv "${OPERATOR_SDK_BINARY}" /usr/local/bin/operator-sdk
  log_success "Operator SDK ${OPERATOR_SDK_VERSION} installed successfully"
}

verify_installations() {
  log_info "Verifying installations..."

  # Set environment variables
  export PATH=$PATH:/usr/local/go/bin
  export GOPATH=$HOME/go
  export PATH=$PATH:$GOPATH/bin

  local errors=0

  # Check Docker
  if docker --version >/dev/null 2>&1; then
      log_success "Docker: $(docker --version)"
  else
      log_error "Docker installation failed"
      ((errors++))
  fi

  # Check Go
  if go version >/dev/null 2>&1; then
      log_success "Go: $(go version)"
  else
      log_error "Go installation failed"
      ((errors++))
  fi

  # Check Kind
  if kind version >/dev/null 2>&1; then
      log_success "Kind: $(kind version)"
  else
      log_error "Kind installation failed"
      ((errors++))
  fi

  # Check kubectl
  if kubectl version --client >/dev/null 2>&1; then
      log_success "kubectl: $(kubectl version --client --short 2>/dev/null || kubectl version --client)"
  else
      log_error "kubectl installation failed"
      ((errors++))
  fi

  # Check Helm
  if helm version --short >/dev/null 2>&1; then
      log_success "Helm: $(helm version --short)"
  else
      log_error "Helm installation failed"
      ((errors++))
  fi

  # Check Ginkgo
  if ginkgo version >/dev/null 2>&1; then
      log_success "Ginkgo: $(ginkgo version)"
  else
      log_error "Ginkgo installation failed"
      ((errors++))
  fi

  # Check golangci-lint
  if golangci-lint --version >/dev/null 2>&1; then
      log_success "golangci-lint: $(golangci-lint --version)"
  else
      log_error "golangci-lint installation failed"
      ((errors++))
  fi

  # Check goreleaser
  if goreleaser --version >/dev/null 2>&1; then
      log_success "goreleaser: $(goreleaser --version | head -n1)"
  else
      log_error "goreleaser installation failed"
      ((errors++))
  fi

  # Check operator-sdk
  if operator-sdk version >/dev/null 2>&1; then
      log_success "operator-sdk: $(operator-sdk version)"
  else
      log_error "operator-sdk installation failed"
      ((errors++))
  fi

  if [[ $errors -eq 0 ]]; then
      log_success "All dependencies verified successfully!"
  else
      log_error "$errors verification(s) failed"
      return 1
  fi
}

setup_e2e_environment() {
  log_info "Setting up E2E test environment..."

  mkdir -p "$HOME/go/bin"

  # Check if the environment variables are already in .bashrc
  if ! grep -q "CloudNativePG E2E environment" ~/.bashrc; then
    {
      echo ""
      echo "# CloudNativePG E2E environment"
      echo "export PATH=\$PATH:/usr/local/go/bin"
      echo "export GOPATH=\$HOME/go"
      echo "export PATH=\$PATH:\$GOPATH/bin"
      echo "export KUBECONFIG=\$HOME/.kube/config"
    } >> ~/.bashrc
    log_success "E2E environment variables added to ~/.bashrc"
  else
    log_warning "E2E environment variables already exist in ~/.bashrc"
  fi

  log_success "E2E environment configured"
}

print_next_steps() {
  echo
  echo "================================================================================"
  log_success "CloudNativePG E2E test dependencies installed successfully!"
  echo "================================================================================"
  echo
  echo "Next steps:"
  echo "1. Logout and login again (or run: source ~/.bashrc)"
  echo "2. Navigate to the repository: cd ~/cloudnative-pg"
  echo "3. Run E2E tests with one of these commands:"
  echo
  echo "   # Run all E2E tests:"
  echo "   ./hack/e2e/run-e2e-kind.sh"
  echo
  echo "   # Run specific feature tests:"
  echo "   FEATURE_TYPE=basic ./hack/e2e/run-e2e-kind.sh"
  echo
  echo "   # Run tests with custom Kubernetes version:"
  echo "   K8S_VERSION=v1.32.0 ./hack/e2e/run-e2e-kind.sh"
  echo
  echo "   # Run local tests (on existing cluster):"
  echo "   ./hack/e2e/run-e2e-local.sh"
  echo
  echo "Available environment variables:"
  echo "   K8S_VERSION - Kubernetes version (default: v1.33.1)"
  echo "   FEATURE_TYPE - Test filter (e.g., basic, backup, monitoring)"
  echo "   PRESERVE_CLUSTER - Keep cluster after tests (default: false)"
  echo "   BUILD_IMAGE - Build operator image locally (default: true)"
  echo "   DEBUG - Enable debug output (default: false)"
  echo
  echo "For more information, see: ~/cloudnative-pg/contribute/development_environment/"
  echo "================================================================================"
}

main() {
  log_info "Starting CloudNativePG E2E test dependencies installation..."

  #check_root
  update_system
  install_basic_deps
  install_docker
  install_go
  install_kind
  install_kubectl
  install_helm
  install_go_tools
  setup_e2e_environment
  verify_installations
  print_next_steps

  log_success "Installation completed successfully!"
  log_warning "Please logout and login again to apply environment changes."
}

main "$@"
