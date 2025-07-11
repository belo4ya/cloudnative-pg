# CloudNativePG for old Kubernetes versions

## GitHub Actions

E2E tests matrix:

- Kubernetes (kind): v1.27.16, v1.26.15, v1.25.16
  (актуальные значения в [.github/kind_versions.json](../.github/kind_versions.json))
- PostgreSQL: 16.9  (актуальные значения в [.github/pg_versions.json](../.github/pg_versions.json))
- Operator:
  1.26.0 (ветка [e2e/v1.26.0](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.26.0)),
  1.25.2 (ветка [e2e/v1.25.2](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.25.2))

Запустить [continuous-delivery](https://github.com/belo4ya/cloudnative-pg/actions/workflows/continuous-delivery.yml)
workflow из ветки [e2e/v1.26.0](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.26.0)
или [e2e/v1.25.2](https://github.com/belo4ya/cloudnative-pg/tree/e2e/v1.25.2).

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

- 🟢 - local: 100.0% success.	(0 out of 308 tests failed)

[Action Workflow Summary](https://github.com/belo4ya/cloudnative-pg/actions/runs/16204521183/attempts/1#summary-45754644937). Бекап - [summary/e2e_main_short.md](summary/e2e_main_short.md)

- Kubernetes (kind): v1.33.1, v1.27.16, v1.26.15, v1.25.16
- PostgreSQL: 16.9
- Operator: 1.26.0
- feature_type: `backup-restore,basic,operator,smoke,snapshot,storage`

#### Запуск 2

[Action Workflow Summary](https://github.com/belo4ya/cloudnative-pg/actions/runs/16212047280/attempts/1#summary-45779927404). Бекап - [summary/e2e_main.md](summary/e2e_main.md)

- Kubernetes (kind): v1.27.16, v1.26.15, v1.25.16
- PostgreSQL: 16.9
- Operator: 1.26.0
- feature_type: `!postgres-configuration`

## Local

> 🚧 TODO

**Не запускать в своем окружении!**

```shell
git clone https://github.com/belo4ya/cloudnative-pg && cd cloudnative-pg && git checkout -b e2e/main origin/e2e/main && cd belo4ya
sudo su
./setup-ubuntu24.sh
```

Смотри [Makefile](Makefile):

```shell
FEATURE_TYPE=smoke make e2e

make e2e-1.26.0-k8s-v1.25.16-pg-16.9

make e2e-1.26.0-k8s-v1.26.15-pg-16.9
```
