#CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.26.0
#CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.25.2
#CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg-testing:release-1.26
#CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg-testing:release-1.25
#K8S_VERSION=v1.33.1
#K8S_VERSION=v1.27.16
#K8S_VERSION=v1.26.15
#K8S_VERSION=v1.25.16
#FEATURE_TYPE='backup-restore,basic,operator,smoke,snapshot,storage'
#FEATURE_TYPE='!postgres-configuration'
#FEATURE_TYPE='!backup-restore'

TEST_DEPTH ?= 4 # from `0` (only critical tests) to `4` (all the tests)
FEATURE_TYPE ?= 'backup-restore,basic,cluster-metadata,declarative-databases,disruptive,\
	importing-databases,maintenance,no-openshift,observability,operator,performance,plugin,\
	pod-scheduling,postgres-configuration,postgres-major-upgrade,publication-subscription,recovery,\
	replication,security,self-healing,service-connectivity,smoke,snapshot,storage,tablespaces,upgrade'

DEFAULT_PG_VERSION = 16.9
DEFAULT_CNPG_VERSION = 1.26.0
DEFAULT_K8S_VERSION = v1.33.1

POSTGRES_IMG ?= ghcr.io/cloudnative-pg/postgresql:$(DEFAULT_PG_VERSION)
CONTROLLER_IMG ?= ghcr.io/cloudnative-pg/cloudnative-pg:$(DEFAULT_CNPG_VERSION)
K8S_VERSION ?= $(DEFAULT_K8S_VERSION)

.PHONY: clone-repo
clone-repo:
	@if [ ! -d "cloudnative-pg" ]; then \
		git clone https://github.com/cloudnative-pg/cloudnative-pg.git; \
	else \
		cd cloudnative-pg && git fetch --all --tags; \
	fi

.PHONY: e2e
e2e: clone-repo
	export TEST_DEPTH=$(TEST_DEPTH) && \
	export FEATURE_TYPE=$(FEATURE_TYPE) && \
	export POSTGRES_IMAGE_NAME=$(POSTGRES_IMG) && \
	export POSTGRES_IMG=$(POSTGRES_IMG) && \
	export CONTROLLER_IMG=$(CONTROLLER_IMG) && \
	export K8S_VERSION=$(K8S_VERSION) && \
	cd cloudnative-pg && BUILD_IMAGE=false make e2e-test-kind

.PHONY: e2e-1.26.0-k8s-v1.26.15-pg-16.9
e2e-1.26.0-k8s-v1.26.15-pg-16.9: clone-repo
	export TEST_DEPTH=$(TEST_DEPTH) && \
	export FEATURE_TYPE=$(FEATURE_TYPE) && \
	export POSTGRES_IMAGE_NAME=ghcr.io/cloudnative-pg/postgresql:16.9 && \
	export POSTGRES_IMG=ghcr.io/cloudnative-pg/postgresql:16.9 && \
	export CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.26.0 && \
	export K8S_VERSION=v1.26.15 && \
	cd cloudnative-pg && BUILD_IMAGE=false make e2e-test-kind

.PHONY: e2e-1.26.0-k8s-v1.25.16-pg-16.9
e2e-1.26.0-k8s-v1.25.16-pg-16.9: clone-repo
	export TEST_DEPTH=$(TEST_DEPTH) && \
	export FEATURE_TYPE=$(FEATURE_TYPE) && \
	export POSTGRES_IMAGE_NAME=ghcr.io/cloudnative-pg/postgresql:16.9 && \
	export POSTGRES_IMG=ghcr.io/cloudnative-pg/postgresql:16.9 && \
	export CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.26.0 && \
	export K8S_VERSION=v1.25.16 && \
	cd cloudnative-pg && BUILD_IMAGE=false make e2e-test-kind
