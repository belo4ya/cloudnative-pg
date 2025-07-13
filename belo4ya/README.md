# CloudNativePG for old Kubernetes versions

## GitHub Actions

E2E tests matrix:

- Kubernetes (kind): v1.27.16, v1.26.15, v1.25.16
  (актуальные значения в [.github/kind_versions.json](../.github/kind_versions.json))
- PostgreSQL: 16.9  (актуальные значения в [.github/pg_versions.json](../.github/pg_versions.json))
- Operator:
  1.26.0 (ветка [e2e/main](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.26.0)),
  ~~1.26.0 (ветка [e2e/v1.26.0](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.26.0))~~,
  ~~1.25.2 (ветка [e2e/v1.25.2](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.25.2))~~

Запустить [continuous-delivery](https://github.com/belo4ya/cloudnative-pg/actions/workflows/continuous-delivery.yml)
workflow из ветки [e2e/main](https://github.com/belo4ya/cloudnative-pg/tree/e2e/main)
~~[e2e/v1.26.0](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.26.0)
или [e2e/v1.25.2](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.25.2)~~.

Inputs:

```yaml
depth: main
limit: local
test_level: 4
feature_type: !postgres-configuration
#feature_type: backup-restore,basic,cluster-metadata,declarative-databases,disruptive,importing-databases,maintenance,no-openshift,observability,operator,performance,plugin,pod-scheduling,postgres-configuration,postgres-major-upgrade,publication-subscription,recovery,replication,security,self-healing,service-connectivity,smoke,snapshot,storage,tablespaces,upgrade
log_level: info
```

### Результаты

#### Запуск 1

- 🟢 - local: 100.0% success. (0 out of 308 tests failed)

[Action Workflow Summary](https://github.com/belo4ya/cloudnative-pg/actions/runs/16204521183/attempts/1#summary-45754644937).
Бекап - [summary/e2e_main_short.md](summary/e2e_main_short.md)

- Kubernetes (kind): v1.33.1, v1.27.16, v1.26.15, v1.25.16
- PostgreSQL: 16.9
- Operator: 1.26.0
- feature_type: `backup-restore,basic,operator,smoke,snapshot,storage`

#### Запуск 2

- 🟢 - local: 100.0% success. (0 out of 561 tests failed)

[Action Workflow Summary](https://github.com/belo4ya/cloudnative-pg/actions/runs/16212047280/attempts/1#summary-45779927404).
Бекап - [summary/e2e_main.md](summary/e2e_main.md)

- Kubernetes (kind): v1.27.16, v1.26.15, v1.25.16
- PostgreSQL: 16.9
- Operator: 1.26.0
- feature_type: `!postgres-configuration`

#### Запуск 3

- 🟡 - local: 96.3% success. (28 out of 772 tests failed)

[Action Workflow Summary](https://github.com/belo4ya/cloudnative-pg/actions/runs/16205696019/attempts/1#summary-45762679567).
Бекап - [summary/e2e_main_all.md](summary/e2e_main_all.md)

- Kubernetes (kind): v1.33.1, v1.27.16, v1.26.15, v1.25.16
- PostgreSQL: 16.9
- Operator: 1.26.0
- feature_type:
  `backup-restore,basic,cluster-metadata,declarative-databases,disruptive,importing-databases,maintenance,no-openshift,observability,operator,performance,plugin,pod-scheduling,postgres-configuration,postgres-major-upgrade,publication-subscription,recovery,replication,security,self-healing,service-connectivity,smoke,snapshot,storage,tablespaces,upgrade`

Падает единственный тест под лейблом `postgres-configuration`, при этом во всех окружениях (даже в v1.33.1).

## Local

### Настройка окружения

> ⚠️ Скрипт `setup-ubuntu24.sh` предназначен для чистых VM (например, в облаке). Не запускайте его в своем окружении.

```shell
git clone https://github.com/belo4ya/cloudnative-pg && cd cloudnative-pg && git checkout -b e2e/main origin/e2e/main && cd belo4ya
sudo su
./setup-ubuntu24.sh && source ~/.bashrc
```

### Запуск тестов

Смотри [Makefile](Makefile):

```shell
FEATURE_TYPE=smoke make e2e

make e2e-1.26.0-k8s-v1.25.16-pg-16.9

make e2e-1.26.0-k8s-v1.26.15-pg-16.9
```

### Результаты

Yandex Cloud:

- OS: Ubuntu 24.04
- CPU: 16 CPU 100%, Intel Ice Lake
- RAM: 32 GiB
- DISK: SSD 65 GB (3000/3000 IOPS, 45/45 MB/s)

---

#### Запуск 1

```shell
FEATURE_TYPE=smoke make e2e

#export TEST_DEPTH=4  && \
#export FEATURE_TYPE=smoke && \
#export POSTGRES_IMAGE_NAME=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export POSTGRES_IMG=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.26.0 && \
#export K8S_VERSION=v1.25.16 && \
#cd cloudnative-pg && BUILD_IMAGE=false make e2e-test-kind
#...
#Ran 35 of 208 Specs in 847.281 seconds
#SUCCESS! -- 35 Passed | 0 Failed | 0 Pending | 173 Skipped
```

#### Запуск 2

```shell
FEATURE_TYPE=smoke make e2e-1.26.0-k8s-v1.26.15-pg-16.9

#export TEST_DEPTH=4  && \
#export FEATURE_TYPE=smoke && \
#export POSTGRES_IMAGE_NAME=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export POSTGRES_IMG=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.26.0 && \
#export K8S_VERSION=v1.26.15 && \
#cd cloudnative-pg && BUILD_IMAGE=false make e2e-test-kind
#...
#Ran 35 of 208 Specs in 827.459 seconds
#SUCCESS! -- 35 Passed | 0 Failed | 0 Pending | 173 Skipped
```

#### Запуск 3

```shell
FEATURE_TYPE='!postgres-configuration' make e2e

#export TEST_DEPTH=4  && \
#export FEATURE_TYPE=!postgres-configuration && \
#export POSTGRES_IMAGE_NAME=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export POSTGRES_IMG=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.26.0 && \
#export K8S_VERSION=v1.33.1 && \
#cd cloudnative-pg && BUILD_IMAGE=false make e2e-test-kind
#...
#Ran 183 of 208 Specs in 7780.702 seconds
#SUCCESS! -- 183 Passed | 0 Failed | 0 Pending | 25 Skipped
```

#### Запуск 4

```shell
FEATURE_TYPE='!postgres-configuration' make e2e-1.26.0-k8s-v1.26.15-pg-16.9

#export TEST_DEPTH=4  && \
#export FEATURE_TYPE=smoke && \
#export POSTGRES_IMAGE_NAME=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export POSTGRES_IMG=ghcr.io/cloudnative-pg/postgresql:16.9 && \
#export CONTROLLER_IMG=ghcr.io/cloudnative-pg/cloudnative-pg:1.26.0 && \
#export K8S_VERSION=v1.26.15 && \
#cd cloudnative-pg && BUILD_IMAGE=false make e2e-test-kind
#...
#Ran 183 of 208 Specs in 7947.152 seconds
#SUCCESS! -- 183 Passed | 0 Failed | 0 Pending | 25 Skipped
```
