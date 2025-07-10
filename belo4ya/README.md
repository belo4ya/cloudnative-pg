# CloudNativePG for old Kubernetes versions

## GitHub Actions

E2E tests matrix:

- Kubernetes (kind): v1.27.16, v1.26.15, v1.25.16 (актуальные значения в [.github/kind_versions.json](../.github/kind_versions.json))
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
feature_type: backup-restore,basic,cluster-metadata,declarative-databases,disruptive,importing-databases,maintenance,no-openshift,observability,operator,performance,plugin,pod-scheduling,postgres-configuration,postgres-major-upgrade,publication-subscription,recovery,replication,security,self-healing,service-connectivity,smoke,snapshot,storage,tablespaces,upgrade
log_level: info
```

## Local


