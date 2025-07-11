Note that there are several tables below: overview, bucketed by several parameters, timings.

## Thermometer

Platforms thermometer:

- 🟢 - local: 100.0% success.	(0 out of 561 tests failed)

## Overview

| failed | out of |                   |
| :------| :------| :-----------------|
| 0      | 561    | test combinations |
| 0      | 187    | unique tests      |
| 0      | 3      | matrix branches   |
| 0      | 3      | k8s versions      |
| 0      | 1      | postgres versions |
| 0      | 1      | platforms         |

No failures, no failure stats shown. It's not easy being green.


<h2><a name=suite_timing>Suite times</a></h2>

| longest taken | shortest taken | slowest branch                 | platform |
| :-------------| :--------------| :------------------------------| :--------|
| 141 min 5 sec | 125 min 48 sec | local-v1.25.16-PostgreSQL-16.9 | local    |

<h2><a name=timing>Test times</a></h2>

| longest taken | shortest taken | slowest branch                 | test                                                                             |
| :-------------| :--------------| :------------------------------| :--------------------------------------------------------------------------------|
| 9 min 27 sec  | 9 min 26 sec   | local-v1.26.15-PostgreSQL-16.9 | Upgrade - when upgrading from the most recent tag to the current operator --     |
|               |                |                                | keeps clusters working after a rolling upgrade                                   |
| 9 min 0 sec   | 8 min 59 sec   | local-v1.25.16-PostgreSQL-16.9 | Upgrade - when upgrading from the current operator to a `prime` operator with a  |
|               |                |                                | new hash -- keeps clusters working after a rolling upgrade                       |
| 9 min 0 sec   | 7 min 0 sec    | local-v1.25.16-PostgreSQL-16.9 | Upgrade - when upgrading from the most recent tag to the current operator --     |
|               |                |                                | keeps clusters working after an online upgrade                                   |
| 8 min 0 sec   | 7 min 59 sec   | local-v1.25.16-PostgreSQL-16.9 | Upgrade - when upgrading from the current operator to a `prime` operator with a  |
|               |                |                                | new hash -- keeps clusters working after an online upgrade                       |
| 7 min 52 sec  | 6 min 10 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica switchover - should demote and promote the clusters correctly -- when    |
|               |                |                                | primaryUpdateMethod is set to switchover                                         |
| 7 min 1 sec   | 6 min 8 sec    | local-v1.25.16-PostgreSQL-16.9 | Replica switchover - should demote and promote the clusters correctly -- when    |
|               |                |                                | primaryUpdateMethod is set to restart                                            |
| 6 min 0 sec   | 4 min 34 sec   | local-v1.25.16-PostgreSQL-16.9 | Postgres Major Upgrade - can upgrade a Cluster to a newer major version --       |
|               |                |                                | PostGIS                                                                          |
| 5 min 33 sec  | 4 min 0 sec    | local-v1.25.16-PostgreSQL-16.9 | Postgres Major Upgrade - can upgrade a Cluster to a newer major version --       |
|               |                |                                | PostgreSQL                                                                       |
| 4 min 53 sec  | 3 min 36 sec   | local-v1.25.16-PostgreSQL-16.9 | Postgres Major Upgrade - can upgrade a Cluster to a newer major version --       |
|               |                |                                | PostgreSQL minimal                                                               |
| 3 min 46 sec  | 2 min 25 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Can restore from a Volume Snapshot -- correctly         |
|               |                |                                | executes PITR with a cold snapshot                                               |
| 3 min 43 sec  | 2 min 23 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Volume Snapshot -- can create a declarative |
|               |                |                                | cold backup and restoring using it                                               |
| 3 min 41 sec  | 3 min 26 sec   | local-v1.25.16-PostgreSQL-16.9 | Fast failover - with async replicas cluster and HA Replication Slots -- can do a |
|               |                |                                | fast failover                                                                    |
| 3 min 37 sec  | 2 min 45 sec   | local-v1.25.16-PostgreSQL-16.9 | Self-fencing with liveness probe - when livenessPinger is disabled -- will not   |
|               |                |                                | restart an isolated primary                                                      |
| 3 min 37 sec  | 2 min 45 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify storage - can not be expanded -- expands PVCs via offline resize          |
| 3 min 35 sec  | 3 min 12 sec   | local-v1.27.16-PostgreSQL-16.9 | Azurite - Backup and restore - using Azurite blobs as object storage -- verifies |
|               |                |                                | that scheduled backups can be suspended                                          |
| 3 min 24 sec  | 2 min 8 sec    | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=restart -- can   |
|               |                |                                | update cluster by adding tablespaces                                             |
| 3 min 24 sec  | 3 min 17 sec   | local-v1.25.16-PostgreSQL-16.9 | Fast switchover - with HA Replication Slots -- can do a fast switchover          |
| 3 min 19 sec  | 2 min 17 sec   | local-v1.26.15-PostgreSQL-16.9 | Imports with Monolithic Approach -- can import data from a cluster with a        |
|               |                |                                | different major version                                                          |
| 3 min 19 sec  | 2 min 41 sec   | local-v1.25.16-PostgreSQL-16.9 | Probes configuration tests -- can change the probes configuration                |
| 3 min 7 sec   | 2 min 58 sec   | local-v1.27.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restores a cluster using minio                                            |
| 3 min 6 sec   | 1 min 50 sec   | local-v1.25.16-PostgreSQL-16.9 | PGDATA Corruption - cluster without replication slots -- can recover cluster     |
|               |                |                                | after pgdata corruption on primary                                               |
| 3 min 4 sec   | 2 min 12 sec   | local-v1.26.15-PostgreSQL-16.9 | Self-fencing with liveness probe - when livenessPinger is enabled -- will        |
|               |                |                                | terminate an isolated primary                                                    |
| 3 min 3 sec   | 2 min 45 sec   | local-v1.25.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup --         |
|               |                |                                | verifies that scheduled backups can be suspended                                 |
| 2 min 57 sec  | 1 min 56 sec   | local-v1.26.15-PostgreSQL-16.9 | Cluster setup -- tests cluster readiness conditions work                         |
| 2 min 54 sec  | 2 min 17 sec   | local-v1.26.15-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Hot Backup and scaleup -- should execute a  |
|               |                |                                | backup with online set to true                                                   |
| 2 min 53 sec  | 2 min 9 sec    | local-v1.26.15-PostgreSQL-16.9 | PGDATA Corruption - plain cluster -- can recover cluster after pgdata corruption |
|               |                |                                | on primary                                                                       |
| 2 min 52 sec  | 2 min 36 sec   | local-v1.25.16-PostgreSQL-16.9 | Separate pg_wal volume -- adding a dedicated WAL volume after cluster is created |
| 2 min 50 sec  | 2 min 40 sec   | local-v1.25.16-PostgreSQL-16.9 | E2E Drain Node - Maintenance on, reuse pvc off -- drains the primary pod's node, |
|               |                |                                | when all the pods are on a single node                                           |
| 2 min 39 sec  | 1 min 58 sec   | local-v1.26.15-PostgreSQL-16.9 | Imports with Microservice Approach -- can import to a cluster with a different   |
|               |                |                                | major version                                                                    |
| 2 min 37 sec  | 2 min 17 sec   | local-v1.26.15-PostgreSQL-16.9 | MinIO - Clusters Recovery from Barman Object Store - using minio as object       |
|               |                |                                | storage -- restores a cluster from barman object using 'barmanObjectStore'       |
|               |                |                                | option in 'externalClusters' section                                             |
| 2 min 37 sec  | 1 min 53 sec   | local-v1.25.16-PostgreSQL-16.9 | Imports with Microservice Approach -- can import a database                      |
| 2 min 36 sec  | 1 min 49 sec   | local-v1.26.15-PostgreSQL-16.9 | Imports with Microservice Approach -- can select one from several databases to   |
|               |                |                                | import                                                                           |
| 2 min 35 sec  | 2 min 26 sec   | local-v1.25.16-PostgreSQL-16.9 | Clusters Recovery From Barman Object Store - using Azurite blobs as object       |
|               |                |                                | storage -- restore cluster from barman object using 'barmanObjectStore' option   |
|               |                |                                | in 'externalClusters' section                                                    |
| 2 min 35 sec  | 2 min 9 sec    | local-v1.25.16-PostgreSQL-16.9 | PGDATA Corruption - cluster with managed roles -- can recover cluster after      |
|               |                |                                | pgdata corruption on primary                                                     |
| 2 min 33 sec  | 2 min 14 sec   | local-v1.25.16-PostgreSQL-16.9 | Azurite - Backup and restore - using Azurite blobs as object storage -- restores |
|               |                |                                | a backed up cluster                                                              |
| 2 min 32 sec  | 2 min 5 sec    | local-v1.25.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restores a cluster with custom backup serverName                          |
| 2 min 30 sec  | 2 min 15 sec   | local-v1.25.16-PostgreSQL-16.9 | Operator High Availability -- can work as HA mode                                |
| 2 min 29 sec  | 1 min 55 sec   | local-v1.26.15-PostgreSQL-16.9 | Imports with Microservice Approach -- can import a database with large objects   |
| 2 min 25 sec  | 1 min 45 sec   | local-v1.25.16-PostgreSQL-16.9 | Fencing - using kubectl-cnpg plugin -- can fence a primary instance              |
| 2 min 24 sec  | 1 min 48 sec   | local-v1.25.16-PostgreSQL-16.9 | Fencing - using annotation -- can fence a primary instance                       |
| 2 min 19 sec  | 2 min 2 sec    | local-v1.26.15-PostgreSQL-16.9 | PVC Deletion -- correctly manages PVCs                                           |
| 2 min 19 sec  | 1 min 34 sec   | local-v1.25.16-PostgreSQL-16.9 | Configuration update with primaryUpdateMethod - primaryUpdateMethod value set to |
|               |                |                                | restart -- should restart primary in place after increasing config parameter     |
|               |                |                                | `max_connection` value                                                           |
| 2 min 14 sec  | 1 min 54 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica Mode - can bootstrap a replica cluster using basic auth -- should be     |
|               |                |                                | able to switch to replica cluster and sync data                                  |
| 2 min 12 sec  | 1 min 34 sec   | local-v1.26.15-PostgreSQL-16.9 | MinIO - Clusters Recovery from Barman Object Store - using minio as object       |
|               |                |                                | storage -- restores a cluster with 'PITR' from barman object using               |
|               |                |                                | 'barmanObjectStore'  option in 'externalClusters' section                        |
| 2 min 10 sec  | 1 min 31 sec   | local-v1.26.15-PostgreSQL-16.9 | E2E Drain Node - Maintenance on, reuse pvc on -- can drain the primary pod's     |
|               |                |                                | node with 3 pods on 2 nodes                                                      |
| 2 min 8 sec   | 1 min 52 sec   | local-v1.27.16-PostgreSQL-16.9 | Operator unavailable - Scale down operator replicas to zero and delete primary   |
|               |                |                                | -- can survive operator failures                                                 |
| 2 min 7 sec   | 1 min 27 sec   | local-v1.25.16-PostgreSQL-16.9 | Cluster setup -- sets up a cluster                                               |
| 2 min 7 sec   | 1 min 30 sec   | local-v1.25.16-PostgreSQL-16.9 | Cluster declarative hibernation -- hibernates an existing cluster                |
| 2 min 6 sec   | 1 min 36 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica Mode - can bootstrap a replica cluster using TLS auth -- should work     |
| 2 min 5 sec   | 1 min 44 sec   | local-v1.26.15-PostgreSQL-16.9 | Replication Slot -- Can enable and disable replication slots                     |
| 2 min 3 sec   | 1 min 29 sec   | local-v1.25.16-PostgreSQL-16.9 | Failover -- reacts to primary failure while respecting the delay                 |
| 2 min 2 sec   | 1 min 38 sec   | local-v1.26.15-PostgreSQL-16.9 | Declarative database management - in a Namespace to be deleted manually -- will  |
|               |                |                                | not prevent the deletion of the namespace with lagging finalizers                |
| 2 min 0 sec   | 1 min 27 sec   | local-v1.25.16-PostgreSQL-16.9 | Bootstrap with pg_basebackup - can bootstrap via pg_basebackup -- using basic    |
|               |                |                                | authentication                                                                   |
| 1 min 59 sec  | 1 min 37 sec   | local-v1.26.15-PostgreSQL-16.9 | Clusters Recovery From Barman Object Store - using Azurite blobs as object       |
|               |                |                                | storage -- restores a cluster with 'PITR' from barman object using               |
|               |                |                                | 'barmanObjectStore'  option in 'externalClusters' section                        |
| 1 min 59 sec  | 1 min 28 sec   | local-v1.26.15-PostgreSQL-16.9 | Declarative database management - in a plain vanilla cluster - when Database CRD |
|               |                |                                | reclaim policy is set to delete -- can manage a declarative database and delete  |
|               |                |                                | it in Postgres                                                                   |
| 1 min 57 sec  | 1 min 47 sec   | local-v1.26.15-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restore a cluster with PITR MinIO                                         |
| 1 min 56 sec  | 1 min 28 sec   | local-v1.26.15-PostgreSQL-16.9 | Publication and Subscription - in a plain vanilla cluster - when Reclaim policy  |
|               |                |                                | is set to delete -- can manage Publication and Subscription and delete them in   |
|               |                |                                | Postgres                                                                         |
| 1 min 56 sec  | 1 min 12 sec   | local-v1.25.16-PostgreSQL-16.9 | Failover -- reacts to primary failure                                            |
| 1 min 52 sec  | 1 min 11 sec   | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=switchover --    |
|               |                |                                | can update cluster adding tablespaces                                            |
| 1 min 51 sec  | 1 min 44 sec   | local-v1.26.15-PostgreSQL-16.9 | Synchronous Replicas - Synchronous replication - Lag-control in startup &        |
|               |                |                                | readiness probes -- lag control in readiness probe will delay the readiness of   |
|               |                |                                | replicas                                                                         |
| 1 min 51 sec  | 1 min 42 sec   | local-v1.25.16-PostgreSQL-16.9 | webhook -- checks if webhook works as expected                                   |
| 1 min 51 sec  | 1 min 30 sec   | local-v1.26.15-PostgreSQL-16.9 | Pod patch -- use the podPatch annotation to generate Pods                        |
| 1 min 51 sec  | 1 min 10 sec   | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the cluster by recovery from volume snapshot backup with pitr      |
| 1 min 50 sec  | 1 min 24 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica Mode - can bootstrap a replica cluster from a backup -- using a Backup   |
|               |                |                                | from the object store                                                            |
| 1 min 48 sec  | 1 min 12 sec   | local-v1.26.15-PostgreSQL-16.9 | Verify Volume Snapshot - using the kubectl cnpg plugin -- can create a Volume    |
|               |                |                                | Snapshot                                                                         |
| 1 min 46 sec  | 1 min 33 sec   | local-v1.26.15-PostgreSQL-16.9 | Synchronous Replicas - Synchronous replication - data durability is preferred -- |
|               |                |                                | will decrease the number of sync replicas to the number of available replicas    |
| 1 min 46 sec  | 1 min 33 sec   | local-v1.25.16-PostgreSQL-16.9 | Cluster scale up and down - without HA Replication Slots -- can scale the        |
|               |                |                                | cluster size                                                                     |
| 1 min 46 sec  | 1 min 41 sec   | local-v1.26.15-PostgreSQL-16.9 | Synchronous Replicas - Legacy synchronous replication -- will not prevent a      |
|               |                |                                | cluster with pg_stat_statements from being created                               |
| 1 min 43 sec  | 1 min 23 sec   | local-v1.25.16-PostgreSQL-16.9 | InitDB settings - initdb custom post-init SQL scripts -- can find the tables     |
|               |                |                                | created by the post-init SQL queries                                             |
| 1 min 43 sec  | 0 min 56 sec   | local-v1.25.16-PostgreSQL-16.9 | Wal-restore in parallel -- Wal-restore in parallel using minio as object storage |
|               |                |                                | for backup                                                                       |
| 1 min 43 sec  | 1 min 34 sec   | local-v1.25.16-PostgreSQL-16.9 | Cluster scale up and down - with HA Replication Slots -- can scale the cluster   |
|               |                |                                | size                                                                             |
| 1 min 43 sec  | 1 min 28 sec   | local-v1.25.16-PostgreSQL-16.9 | Synchronous Replicas - Synchronous replication - Lag-control in startup &        |
|               |                |                                | readiness probes -- lag control in startup probe will delay the readiness of     |
|               |                |                                | replicas                                                                         |
| 1 min 42 sec  | 1 min 8 sec    | local-v1.25.16-PostgreSQL-16.9 | Metrics -- execute custom queries against the application database on replica    |
|               |                |                                | clusters                                                                         |
| 1 min 42 sec  | 1 min 36 sec   | local-v1.26.15-PostgreSQL-16.9 | Azurite - Backup and restore - using Azurite blobs as object storage -- backs up |
|               |                |                                | and restore a cluster with PITR Azurite                                          |
| 1 min 41 sec  | 1 min 5 sec    | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can create the cluster  |
|               |                |                                | by restoring from the object store                                               |
| 1 min 41 sec  | 1 min 13 sec   | local-v1.25.16-PostgreSQL-16.9 | nodeSelector - The label exists -- verifies the pods run on the labeled node     |
| 1 min 40 sec  | 1 min 5 sec    | local-v1.26.15-PostgreSQL-16.9 | Separate pg_wal volume -- having a dedicated WAL volume                          |
| 1 min 39 sec  | 1 min 14 sec   | local-v1.25.16-PostgreSQL-16.9 | Configuration update -- 01. reloading Pg when a parameter requiring reload is    |
|               |                |                                | modified                                                                         |
| 1 min 37 sec  | 1 min 7 sec    | local-v1.26.15-PostgreSQL-16.9 | Metrics -- can gather metrics with multiple target databases                     |
| 1 min 37 sec  | 1 min 28 sec   | local-v1.26.15-PostgreSQL-16.9 | Operator unavailable - Delete primary and operator concurrently -- can survive   |
|               |                |                                | operator failures                                                                |
| 1 min 37 sec  | 1 min 34 sec   | local-v1.25.16-PostgreSQL-16.9 | JSON log output -- correctly produces logs in JSON format                        |
| 1 min 36 sec  | 1 min 21 sec   | local-v1.25.16-PostgreSQL-16.9 | Fast switchover - without HA Replication Slots -- can do a fast switchover       |
| 1 min 36 sec  | 1 min 15 sec   | local-v1.26.15-PostgreSQL-16.9 | Metrics -- can gather default metrics details                                    |
| 1 min 34 sec  | 1 min 8 sec    | local-v1.25.16-PostgreSQL-16.9 | Certificates - Operator managed mode -- can authenticate using a Certificate     |
|               |                |                                | that is generated from the 'kubectl-cnpg' plugin                                 |
| 1 min 33 sec  | 1 min 21 sec   | local-v1.26.15-PostgreSQL-16.9 | Fast failover - with async replicas cluster (without HA Replication Slots) --    |
|               |                |                                | can do a fast failover                                                           |
| 1 min 33 sec  | 1 min 13 sec   | local-v1.26.15-PostgreSQL-16.9 | Connection via services - User-defined secrets -- can connect with user-supplied |
|               |                |                                | passwords                                                                        |
| 1 min 31 sec  | 1 min 3 sec    | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the cluster by restoring from the backup  using volume snapshot    |
| 1 min 31 sec  | 1 min 5 sec    | local-v1.26.15-PostgreSQL-16.9 | Metrics -- can gather metrics depending on the predicate query                   |
| 1 min 30 sec  | 1 min 22 sec   | local-v1.26.15-PostgreSQL-16.9 | Fast failover - with sync replicas cluster -- can do a fast failover             |
| 1 min 29 sec  | 1 min 6 sec    | local-v1.25.16-PostgreSQL-16.9 | Synchronous Replicas - Synchronous replication -- can manage quorum/priority     |
|               |                |                                | based synchronous replication                                                    |
| 1 min 29 sec  | 1 min 13 sec   | local-v1.25.16-PostgreSQL-16.9 | InitDB settings - custom default locale -- use the custom default locale         |
|               |                |                                | specified                                                                        |
| 1 min 28 sec  | 1 min 9 sec    | local-v1.25.16-PostgreSQL-16.9 | Certificates - User supplied both client and server certificate mode -- can      |
|               |                |                                | authenticate custom CA to verify both client and server certificates for a       |
|               |                |                                | cluster                                                                          |
| 1 min 28 sec  | 1 min 10 sec   | local-v1.26.15-PostgreSQL-16.9 | Certificates - User supplied server certificate mode -- can authenticate using a |
|               |                |                                | Certificate that is generated from the 'kubectl-cnpg' plugin and verify-ca the   |
|               |                |                                | provided server certificate                                                      |
| 1 min 28 sec  | 1 min 11 sec   | local-v1.25.16-PostgreSQL-16.9 | Certificates - User supplied client certificate mode -- can authenticate custom  |
|               |                |                                | CA to verify client certificates for a cluster                                   |
| 1 min 27 sec  | 1 min 20 sec   | local-v1.26.15-PostgreSQL-16.9 | Switchover - without HA Replication slots -- reacts to switchover requests       |
| 1 min 27 sec  | 1 min 16 sec   | local-v1.25.16-PostgreSQL-16.9 | Synchronous Replicas - Legacy synchronous replication -- can manage sync         |
|               |                |                                | replicas                                                                         |
| 1 min 27 sec  | 1 min 8 sec    | local-v1.25.16-PostgreSQL-16.9 | E2E Affinity -- can create a cluster and a pooler with required affinity         |
| 1 min 26 sec  | 1 min 11 sec   | local-v1.26.15-PostgreSQL-16.9 | Switchover - with HA Replication slots -- reacts to switchover requests          |
| 1 min 26 sec  | 1 min 21 sec   | local-v1.25.16-PostgreSQL-16.9 | E2E Drain Node - Default maintenance and pvc -- will remove the pod from a node  |
|               |                |                                | tainted by karpenter                                                             |
| 1 min 25 sec  | 1 min 6 sec    | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can verify tablespaces and PVC were created                                   |
| 1 min 25 sec  | 1 min 1 sec    | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=switchover --    |
|               |                |                                | can verify tablespaces and PVC were created                                      |
| 1 min 25 sec  | 1 min 7 sec    | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Hot Backup and scaleup -- should scale up   |
|               |                |                                | the cluster with volume snapshot                                                 |
| 1 min 23 sec  | 1 min 4 sec    | local-v1.26.15-PostgreSQL-16.9 | Bootstrap with pg_basebackup - can bootstrap via pg_basebackup -- using TLS      |
|               |                |                                | authentication                                                                   |
| 1 min 23 sec  | 1 min 7 sec    | local-v1.26.15-PostgreSQL-16.9 | Metrics -- can gather metrics with TLS enabled                                   |
| 1 min 22 sec  | 1 min 14 sec   | local-v1.25.16-PostgreSQL-16.9 | Pod eviction - Pod eviction in a multiple instance cluster -- evicts the replica |
|               |                |                                | pod in multiple instance cluster                                                 |
| 1 min 20 sec  | 1 min 3 sec    | local-v1.26.15-PostgreSQL-16.9 | MinIO - Clusters Recovery from Barman Object Store - using minio as object       |
|               |                |                                | storage -- restore cluster from barman object using replica option in spec       |
| 1 min 20 sec  | 0 min 56 sec   | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can verify tablespaces  |
|               |                |                                | and PVC were created                                                             |
| 1 min 19 sec  | 1 min 11 sec   | local-v1.25.16-PostgreSQL-16.9 | Connection via services - Auto-generated passwords -- can connect with auto-     |
|               |                |                                | generated passwords                                                              |
| 1 min 18 sec  | 1 min 6 sec    | local-v1.25.16-PostgreSQL-16.9 | Metrics -- can gather metrics                                                    |
| 1 min 16 sec  | 1 min 8 sec    | local-v1.25.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restore a cluster from standby                                            |
| 1 min 16 sec  | 0 min 53 sec   | local-v1.26.15-PostgreSQL-16.9 | Imports with Microservice Approach -- fails importing when db does not exist in  |
|               |                |                                | source cluster                                                                   |
| 1 min 13 sec  | 0 min 58 sec   | local-v1.25.16-PostgreSQL-16.9 | PGBouncer Connections - user-defined certificates -- can connect to Postgres via |
|               |                |                                | pgbouncer using different client and server CA                                   |
| 1 min 12 sec  | 1 min 5 sec    | local-v1.25.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up a cluster from standby with backup target defined in backup                   |
| 1 min 11 sec  | 0 min 50 sec   | local-v1.26.15-PostgreSQL-16.9 | PGBouncer Types -- should have proper service ip and host details for ro and rw  |
|               |                |                                | with default installation                                                        |
| 1 min 11 sec  | 0 min 59 sec   | local-v1.26.15-PostgreSQL-16.9 | E2E Tolerations Node -- can create a cluster with tolerations                    |
| 1 min 10 sec  | 0 min 51 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica Mode - archive mode set to 'always' on designated primary -- verifies    |
|               |                |                                | replica cluster can archive WALs from the designated primary                     |
| 1 min 10 sec  | 1 min 2 sec    | local-v1.25.16-PostgreSQL-16.9 | webhook -- Does not crash the operator when disabled                             |
| 1 min 7 sec   | 0 min 59 sec   | local-v1.25.16-PostgreSQL-16.9 | Replica Mode - can bootstrap a replica cluster using basic auth -- can be        |
|               |                |                                | detached from the source cluster                                                 |
| 1 min 5 sec   | 0 min 55 sec   | local-v1.25.16-PostgreSQL-16.9 | PGBouncer Connections - no user-defined certificates -- can connect to Postgres  |
|               |                |                                | via pgbouncer service using basic authentication                                 |
| 1 min 4 sec   | 0 min 51 sec   | local-v1.26.15-PostgreSQL-16.9 | Fencing - using kubectl-cnpg plugin -- can fence all the instances in a cluster  |
| 1 min 3 sec   | 0 min 49 sec   | local-v1.25.16-PostgreSQL-16.9 | PGBouncer Metrics -- should retrieve the metrics exposed by a freshly created    |
|               |                |                                | pooler of type pgBouncer and validate its content                                |
| 1 min 2 sec   | 1 min 1 sec    | local-v1.26.15-PostgreSQL-16.9 | E2E Drain Node - with a single instance cluster - when the PDB is enabled --     |
|               |                |                                | prevents the primary node from being drained                                     |
| 1 min 0 sec   | 0 min 46 sec   | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can update the cluster  |
|               |                |                                | adding a new tablespace and backup again                                         |
| 0 min 56 sec  | 0 min 32 sec   | local-v1.27.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Hot Backup and scaleup -- should clean up   |
|               |                |                                | unused backup connections                                                        |
| 0 min 53 sec  | 0 min 46 sec   | local-v1.26.15-PostgreSQL-16.9 | Fencing - using annotation -- can fence all the instances in a cluster           |
| 0 min 52 sec  | 0 min 39 sec   | local-v1.25.16-PostgreSQL-16.9 | E2E Drain Node - with a single instance cluster - when the PDB is disabled --    |
|               |                |                                | can drain the primary node and recover the cluster when uncordoned               |
| 0 min 49 sec  | 0 min 33 sec   | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=restart -- can   |
|               |                |                                | hibernate via annotation a cluster with tablespaces                              |
| 0 min 48 sec  | 0 min 42 sec   | local-v1.25.16-PostgreSQL-16.9 | Configuration update -- 03. restarting and switching Pg when a parameter         |
|               |                |                                | requiring restart is modified                                                    |
| 0 min 46 sec  | 0 min 28 sec   | local-v1.25.16-PostgreSQL-16.9 | Configuration update -- 08. restarting and not switching Pg when a hot standby   |
|               |                |                                | sensible parameter requiring to restart first the primary instance is decreased, |
|               |                |                                | resetting to the default value                                                   |
| 0 min 46 sec  | 0 min 36 sec   | local-v1.25.16-PostgreSQL-16.9 | Configuration update -- 04. restarting and switching Pg when mixed parameters    |
|               |                |                                | are modified                                                                     |
| 0 min 45 sec  | 0 min 35 sec   | local-v1.25.16-PostgreSQL-16.9 | Fencing - using annotation -- can fence a follower instance                      |
| 0 min 43 sec  | 0 min 42 sec   | local-v1.25.16-PostgreSQL-16.9 | Config support -- verify metrics details when updated default monitoring         |
|               |                |                                | configMap queries parameter is set to be empty                                   |
| 0 min 43 sec  | 0 min 43 sec   | local-v1.27.16-PostgreSQL-16.9 | Config support -- creates the configuration map and secret                       |
| 0 min 42 sec  | 0 min 36 sec   | local-v1.27.16-PostgreSQL-16.9 | Replica Mode - can bootstrap a replica cluster from a backup -- using a Volume   |
|               |                |                                | Snapshot                                                                         |
| 0 min 42 sec  | 0 min 41 sec   | local-v1.25.16-PostgreSQL-16.9 | Publication and Subscription - in a plain vanilla cluster - when Reclaim policy  |
|               |                |                                | is set to retain -- can manage Publication and Subscription and release it       |
| 0 min 42 sec  | 0 min 38 sec   | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=restart -- can   |
|               |                |                                | fence a cluster with tablespaces using the plugin                                |
| 0 min 41 sec  | 0 min 31 sec   | local-v1.27.16-PostgreSQL-16.9 | Fencing - using kubectl-cnpg plugin -- can fence a follower instance             |
| 0 min 40 sec  | 0 min 40 sec   | local-v1.27.16-PostgreSQL-16.9 | PostgreSQL operator deployment -- sets up the operator                           |
| 0 min 39 sec  | 0 min 29 sec   | local-v1.25.16-PostgreSQL-16.9 | Configuration update -- 07. restarting and not switching Pg when a hot standby   |
|               |                |                                | sensible parameter requiring to restart first the primary instance is decreased  |
| 0 min 37 sec  | 0 min 24 sec   | local-v1.25.16-PostgreSQL-16.9 | Enable superuser password -- enable and disable superuser access                 |
| 0 min 37 sec  | 0 min 33 sec   | local-v1.25.16-PostgreSQL-16.9 | Pod eviction - Pod eviction in single instance cluster -- evicts the primary pod |
|               |                |                                | in single instance cluster                                                       |
| 0 min 35 sec  | 0 min 31 sec   | local-v1.25.16-PostgreSQL-16.9 | Available Architectures -- manages each available architecture                   |
| 0 min 35 sec  | 0 min 25 sec   | local-v1.26.15-PostgreSQL-16.9 | Managed services tests -- should properly handle disabledDefaultServices field   |
| 0 min 34 sec  | 0 min 25 sec   | local-v1.25.16-PostgreSQL-16.9 | Managed services tests -- should properly handle replace update strategy         |
| 0 min 33 sec  | 0 min 28 sec   | local-v1.25.16-PostgreSQL-16.9 | Update user and superuser password -- can update the user application password   |
| 0 min 32 sec  | 0 min 23 sec   | local-v1.26.15-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- can create roles specified in the |
|               |                |                                | managed roles stanza                                                             |
| 0 min 31 sec  | 0 min 25 sec   | local-v1.26.15-PostgreSQL-16.9 | Managed services tests -- should create and delete a rw managed service          |
| 0 min 26 sec  | 0 min 22 sec   | local-v1.26.15-PostgreSQL-16.9 | Metrics -- default set of metrics queries should not be injected into the        |
|               |                |                                | cluster when disableDefaultQueries field set to be true                          |
| 0 min 24 sec  | 0 min 22 sec   | local-v1.26.15-PostgreSQL-16.9 | Config support -- creates a cluster                                              |
| 0 min 22 sec  | 0 min 22 sec   | local-v1.26.15-PostgreSQL-16.9 | PodMonitor support -- sets up a cluster enabling PodMonitor feature              |
| 0 min 20 sec  | 0 min 19 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Volume Snapshot -- can take a snapshot      |
|               |                |                                | targeting the primary                                                            |
| 0 min 18 sec  | 0 min 16 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Volume Snapshot -- can take a snapshot in a |
|               |                |                                | single instance cluster                                                          |
| 0 min 18 sec  | 0 min 16 sec   | local-v1.27.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the volume snapshot backup using the plugin and verify the backup  |
| 0 min 15 sec  | 0 min 15 sec   | local-v1.25.16-PostgreSQL-16.9 | Pod eviction - Pod eviction in a multiple instance cluster -- evicts the primary |
|               |                |                                | pod in multiple instance cluster                                                 |
| 0 min 15 sec  | 0 min 12 sec   | local-v1.27.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup --         |
|               |                |                                | immediately starts a backup using ScheduledBackups 'immediate' option            |
| 0 min 14 sec  | 0 min 7 sec    | local-v1.27.16-PostgreSQL-16.9 | PGBouncer Connections - no user-defined certificates -- can connect to Postgres  |
|               |                |                                | via pgbouncer service using tls certificates                                     |
| 0 min 12 sec  | 0 min 11 sec   | local-v1.27.16-PostgreSQL-16.9 | Declarative database management - in a plain vanilla cluster - when Database CRD |
|               |                |                                | reclaim policy is set to retain -- can manage a declarative database and release |
|               |                |                                | it                                                                               |
| 0 min 12 sec  | 0 min 7 sec    | local-v1.27.16-PostgreSQL-16.9 | Certificates - Operator managed mode -- can connect after switching to user-     |
|               |                |                                | supplied client certificates                                                     |
| 0 min 12 sec  | 0 min 11 sec   | local-v1.27.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the volume snapshot backup declaratively and verify the backup     |
| 0 min 11 sec  | 0 min 8 sec    | local-v1.27.16-PostgreSQL-16.9 | Certificates - Operator managed mode -- can connect after switching both server  |
|               |                |                                | and client certificates to user-supplied mode                                    |
| 0 min 11 sec  | 0 min 9 sec    | local-v1.25.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- verify  |
|               |                |                                | tags in backed files                                                             |
| 0 min 9 sec   | 0 min 6 sec    | local-v1.26.15-PostgreSQL-16.9 | Azurite - Backup and restore - using Azurite blobs as object storage --          |
|               |                |                                | immediately starts a backup using ScheduledBackups immediate option              |
| 0 min 9 sec   | 0 min 8 sec    | local-v1.26.15-PostgreSQL-16.9 | PGBouncer Types -- has proper service ip and host details for ro and rw scaling  |
|               |                |                                | up                                                                               |
| 0 min 8 sec   | 0 min 5 sec    | local-v1.26.15-PostgreSQL-16.9 | PGBouncer Connections - no user-defined certificates -- should recreate after    |
|               |                |                                | deleting pgbouncer deployment                                                    |
| 0 min 7 sec   | 0 min 5 sec    | local-v1.25.16-PostgreSQL-16.9 | PGBouncer Connections - no user-defined certificates -- should recreate after    |
|               |                |                                | deleting pgbouncer pod                                                           |
| 0 min 6 sec   | 0 min 5 sec    | local-v1.27.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can update role membership and    |
|               |                |                                | verify changes in db                                                             |
| 0 min 6 sec   | 0 min 2 sec    | local-v1.25.16-PostgreSQL-16.9 | Certificates - Operator managed mode -- can authenticate after switching to      |
|               |                |                                | user-supplied server certs                                                       |
| 0 min 6 sec   | 0 min 5 sec    | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can create the backup   |
|               |                |                                | and verify content in the object store                                           |
| 0 min 5 sec   | 0 min 3 sec    | local-v1.25.16-PostgreSQL-16.9 | PGBouncer Types -- has proper service ip and host details for ro and rw scaling  |
|               |                |                                | down                                                                             |
| 0 min 5 sec   | 0 min 4 sec    | local-v1.26.15-PostgreSQL-16.9 | Configuration update with primaryUpdateMethod - primaryUpdateMethod value set to |
|               |                |                                | restart -- work_mem config change should not require a restart                   |
| 0 min 3 sec   | 0 min 3 sec    | local-v1.25.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- can update role attributes in the |
|               |                |                                | spec and they are applied in the database                                        |
| 0 min 3 sec   | 0 min 1 sec    | local-v1.27.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can update the cluster  |
|               |                |                                | to set a tablespace as temporary                                                 |
| 0 min 2 sec   | 0 min 1 sec    | local-v1.27.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can drop role with ensure absent  |
|               |                |                                | option                                                                           |
| 0 min 2 sec   | 0 min 1 sec    | local-v1.25.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can update role comment and       |
|               |                |                                | verify changes in db                                                             |
| 0 min 2 sec   | 0 min 2 sec    | local-v1.27.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can update role password in       |
|               |                |                                | secrets and db and verify the connectivity                                       |
| 0 min 2 sec   | 0 min 1 sec    | local-v1.26.15-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can add role with all attribute   |
|               |                |                                | omitted and verify it is default                                                 |
| 0 min 1 sec   | 0 min 1 sec    | local-v1.27.16-PostgreSQL-16.9 | nodeSelector - The label doesn't exist -- verifies that pods can't be scheduled  |
| 0 min 1 sec   | 0 min 0 sec    | local-v1.26.15-PostgreSQL-16.9 | Configuration update -- 02. reloading Pg when pg_hba rules are modified          |
| 0 min 1 sec   | 0 min 0 sec    | local-v1.25.16-PostgreSQL-16.9 | Configuration update -- 06. error out when a blockedConfigurationParameter is    |
|               |                |                                | modified                                                                         |
| 0 min 1 sec   | 0 min 0 sec    | local-v1.26.15-PostgreSQL-16.9 | Configuration update -- 09. reloading Pg when pg_ident rules are modified        |
| 0 min 1 sec   | 0 min 0 sec    | local-v1.27.16-PostgreSQL-16.9 | Configuration update -- 05. error out when a fixedConfigurationParameter is      |
|               |                |                                | modified                                                                         |
| 0 min 1 sec   | 0 min 0 sec    | local-v1.25.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can update role password          |
|               |                |                                | validUntil and verify in the database                                            |
| 0 min 1 sec   | 0 min 0 sec    | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can update the cluster  |
|               |                |                                | by change the owner of tablespace                                                |
| 0 min 0 sec   | 0 min 0 sec    | local-v1.27.16-PostgreSQL-16.9 | Config support -- verify label's and annotation's inheritance when global        |
|               |                |                                | config-map changed                                                               |
| 0 min 0 sec   | 0 min 0 sec    | local-v1.26.15-PostgreSQL-16.9 | PodMonitor support -- requires existence of the PodMonitor CRD                   |
| 0 min 0 sec   | 0 min 0 sec    | local-v1.26.15-PostgreSQL-16.9 | JSON log output unit tests -- Can check valid logging_collector record for query |
| 0 min 0 sec   | 0 min 0 sec    | local-v1.26.15-PostgreSQL-16.9 | JSON log output unit tests -- Can check valid logging_collector                  |
