Note that there are several tables below: overview, bucketed by several parameters, timings.

## Thermometer

Platforms thermometer:

- 🟢 - local: 100.0% success.	(0 out of 308 tests failed)

## Overview

| failed | out of |                   |
| :------| :------| :-----------------|
| 0      | 308    | test combinations |
| 0      | 77     | unique tests      |
| 0      | 4      | matrix branches   |
| 0      | 4      | k8s versions      |
| 0      | 1      | postgres versions |
| 0      | 1      | platforms         |

No failures, no failure stats shown. It's not easy being green.


<h2><a name=suite_timing>Suite times</a></h2>

| longest taken | shortest taken | slowest branch                 | platform |
| :-------------| :--------------| :------------------------------| :--------|
| 43 min 3 sec  | 31 min 55 sec  | local-v1.25.16-PostgreSQL-16.9 | local    |

<h2><a name=timing>Test times</a></h2>

| longest taken | shortest taken | slowest branch                 | test                                                                             |
| :-------------| :--------------| :------------------------------| :--------------------------------------------------------------------------------|
| 7 min 44 sec  | 6 min 11 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica switchover - should demote and promote the clusters correctly -- when    |
|               |                |                                | primaryUpdateMethod is set to switchover                                         |
| 7 min 37 sec  | 6 min 4 sec    | local-v1.26.15-PostgreSQL-16.9 | Replica switchover - should demote and promote the clusters correctly -- when    |
|               |                |                                | primaryUpdateMethod is set to restart                                            |
| 4 min 2 sec   | 2 min 36 sec   | local-v1.25.16-PostgreSQL-16.9 | Separate pg_wal volume -- adding a dedicated WAL volume after cluster is created |
| 3 min 58 sec  | 2 min 25 sec   | local-v1.26.15-PostgreSQL-16.9 | Verify storage - can not be expanded -- expands PVCs via offline resize          |
| 3 min 39 sec  | 3 min 8 sec    | local-v1.27.16-PostgreSQL-16.9 | Azurite - Backup and restore - using Azurite blobs as object storage -- verifies |
|               |                |                                | that scheduled backups can be suspended                                          |
| 3 min 37 sec  | 2 min 34 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Can restore from a Volume Snapshot -- correctly         |
|               |                |                                | executes PITR with a cold snapshot                                               |
| 3 min 34 sec  | 2 min 18 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Volume Snapshot -- can create a declarative |
|               |                |                                | cold backup and restoring using it                                               |
| 3 min 32 sec  | 2 min 33 sec   | local-v1.25.16-PostgreSQL-16.9 | Probes configuration tests -- can change the probes configuration                |
| 3 min 28 sec  | 2 min 35 sec   | local-v1.27.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restores a cluster using minio                                            |
| 3 min 25 sec  | 2 min 52 sec   | local-v1.33.1-PostgreSQL-16.9  | MinIO - Backup and restore - using minio as object storage for backup --         |
|               |                |                                | verifies that scheduled backups can be suspended                                 |
| 3 min 13 sec  | 2 min 19 sec   | local-v1.33.1-PostgreSQL-16.9  | Azurite - Backup and restore - using Azurite blobs as object storage -- restores |
|               |                |                                | a backed up cluster                                                              |
| 3 min 5 sec   | 2 min 12 sec   | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=restart -- can   |
|               |                |                                | update cluster by adding tablespaces                                             |
| 3 min 4 sec   | 2 min 16 sec   | local-v1.26.15-PostgreSQL-16.9 | Clusters Recovery From Barman Object Store - using Azurite blobs as object       |
|               |                |                                | storage -- restore cluster from barman object using 'barmanObjectStore' option   |
|               |                |                                | in 'externalClusters' section                                                    |
| 2 min 45 sec  | 1 min 57 sec   | local-v1.26.15-PostgreSQL-16.9 | Cluster setup -- tests cluster readiness conditions work                         |
| 2 min 40 sec  | 2 min 5 sec    | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Hot Backup and scaleup -- should execute a  |
|               |                |                                | backup with online set to true                                                   |
| 2 min 37 sec  | 2 min 13 sec   | local-v1.27.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restores a cluster with custom backup serverName                          |
| 2 min 27 sec  | 2 min 11 sec   | local-v1.26.15-PostgreSQL-16.9 | Operator High Availability -- can work as HA mode                                |
| 2 min 23 sec  | 1 min 58 sec   | local-v1.26.15-PostgreSQL-16.9 | MinIO - Clusters Recovery from Barman Object Store - using minio as object       |
|               |                |                                | storage -- restores a cluster from barman object using 'barmanObjectStore'       |
|               |                |                                | option in 'externalClusters' section                                             |
| 2 min 3 sec   | 1 min 41 sec   | local-v1.25.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restore a cluster with PITR MinIO                                         |
| 2 min 3 sec   | 1 min 31 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica Mode - can bootstrap a replica cluster from a backup -- using a Backup   |
|               |                |                                | from the object store                                                            |
| 2 min 3 sec   | 1 min 12 sec   | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the cluster by recovery from volume snapshot backup with pitr      |
| 2 min 2 sec   | 1 min 17 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - using the kubectl cnpg plugin -- can create a Volume    |
|               |                |                                | Snapshot                                                                         |
| 2 min 2 sec   | 1 min 16 sec   | local-v1.25.16-PostgreSQL-16.9 | Cluster setup -- sets up a cluster                                               |
| 2 min 2 sec   | 1 min 34 sec   | local-v1.26.15-PostgreSQL-16.9 | Azurite - Backup and restore - using Azurite blobs as object storage -- backs up |
|               |                |                                | and restore a cluster with PITR Azurite                                          |
| 2 min 2 sec   | 1 min 48 sec   | local-v1.26.15-PostgreSQL-16.9 | Declarative database management - in a Namespace to be deleted manually -- will  |
|               |                |                                | not prevent the deletion of the namespace with lagging finalizers                |
| 2 min 0 sec   | 1 min 23 sec   | local-v1.25.16-PostgreSQL-16.9 | Separate pg_wal volume -- having a dedicated WAL volume                          |
| 2 min 0 sec   | 1 min 27 sec   | local-v1.25.16-PostgreSQL-16.9 | Pod patch -- use the podPatch annotation to generate Pods                        |
| 1 min 56 sec  | 1 min 42 sec   | local-v1.25.16-PostgreSQL-16.9 | Operator unavailable - Scale down operator replicas to zero and delete primary   |
|               |                |                                | -- can survive operator failures                                                 |
| 1 min 56 sec  | 1 min 31 sec   | local-v1.25.16-PostgreSQL-16.9 | Operator unavailable - Delete primary and operator concurrently -- can survive   |
|               |                |                                | operator failures                                                                |
| 1 min 53 sec  | 1 min 42 sec   | local-v1.25.16-PostgreSQL-16.9 | webhook -- checks if webhook works as expected                                   |
| 1 min 51 sec  | 1 min 14 sec   | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=switchover --    |
|               |                |                                | can update cluster adding tablespaces                                            |
| 1 min 50 sec  | 1 min 6 sec    | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=switchover --    |
|               |                |                                | can verify tablespaces and PVC were created                                      |
| 1 min 49 sec  | 1 min 22 sec   | local-v1.26.15-PostgreSQL-16.9 | Declarative database management - in a plain vanilla cluster - when Database CRD |
|               |                |                                | reclaim policy is set to delete -- can manage a declarative database and delete  |
|               |                |                                | it in Postgres                                                                   |
| 1 min 48 sec  | 1 min 1 sec    | local-v1.26.15-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up and restore a cluster from standby                                            |
| 1 min 46 sec  | 1 min 34 sec   | local-v1.25.16-PostgreSQL-16.9 | MinIO - Clusters Recovery from Barman Object Store - using minio as object       |
|               |                |                                | storage -- restores a cluster with 'PITR' from barman object using               |
|               |                |                                | 'barmanObjectStore'  option in 'externalClusters' section                        |
| 1 min 46 sec  | 0 min 55 sec   | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can verify tablespaces  |
|               |                |                                | and PVC were created                                                             |
| 1 min 45 sec  | 1 min 1 sec    | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the cluster by restoring from the backup  using volume snapshot    |
| 1 min 42 sec  | 1 min 28 sec   | local-v1.25.16-PostgreSQL-16.9 | Clusters Recovery From Barman Object Store - using Azurite blobs as object       |
|               |                |                                | storage -- restores a cluster with 'PITR' from barman object using               |
|               |                |                                | 'barmanObjectStore'  option in 'externalClusters' section                        |
| 1 min 42 sec  | 1 min 21 sec   | local-v1.25.16-PostgreSQL-16.9 | InitDB settings - initdb custom post-init SQL scripts -- can find the tables     |
|               |                |                                | created by the post-init SQL queries                                             |
| 1 min 39 sec  | 0 min 58 sec   | local-v1.25.16-PostgreSQL-16.9 | Wal-restore in parallel -- Wal-restore in parallel using minio as object storage |
|               |                |                                | for backup                                                                       |
| 1 min 38 sec  | 1 min 6 sec    | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can create the cluster  |
|               |                |                                | by restoring from the object store                                               |
| 1 min 37 sec  | 0 min 59 sec   | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can verify tablespaces and PVC were created                                   |
| 1 min 30 sec  | 1 min 7 sec    | local-v1.26.15-PostgreSQL-16.9 | InitDB settings - custom default locale -- use the custom default locale         |
|               |                |                                | specified                                                                        |
| 1 min 26 sec  | 1 min 1 sec    | local-v1.26.15-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- backs   |
|               |                |                                | up a cluster from standby with backup target defined in backup                   |
| 1 min 16 sec  | 0 min 30 sec   | local-v1.25.16-PostgreSQL-16.9 | Replica Mode - can bootstrap a replica cluster from a backup -- using a Volume   |
|               |                |                                | Snapshot                                                                         |
| 1 min 14 sec  | 1 min 2 sec    | local-v1.26.15-PostgreSQL-16.9 | webhook -- Does not crash the operator when disabled                             |
| 1 min 13 sec  | 0 min 50 sec   | local-v1.26.15-PostgreSQL-16.9 | Replica Mode - archive mode set to 'always' on designated primary -- verifies    |
|               |                |                                | replica cluster can archive WALs from the designated primary                     |
| 1 min 9 sec   | 1 min 1 sec    | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Hot Backup and scaleup -- should scale up   |
|               |                |                                | the cluster with volume snapshot                                                 |
| 1 min 8 sec   | 0 min 57 sec   | local-v1.25.16-PostgreSQL-16.9 | MinIO - Clusters Recovery from Barman Object Store - using minio as object       |
|               |                |                                | storage -- restore cluster from barman object using replica option in spec       |
| 1 min 0 sec   | 0 min 18 sec   | local-v1.26.15-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Hot Backup and scaleup -- should clean up   |
|               |                |                                | unused backup connections                                                        |
| 1 min 0 sec   | 0 min 49 sec   | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can update the cluster  |
|               |                |                                | adding a new tablespace and backup again                                         |
| 0 min 48 sec  | 0 min 32 sec   | local-v1.25.16-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=restart -- can   |
|               |                |                                | hibernate via annotation a cluster with tablespaces                              |
| 0 min 43 sec  | 0 min 39 sec   | local-v1.27.16-PostgreSQL-16.9 | Tablespaces tests - on a plain cluster with primaryUpdateMethod=restart -- can   |
|               |                |                                | fence a cluster with tablespaces using the plugin                                |
| 0 min 41 sec  | 0 min 40 sec   | local-v1.33.1-PostgreSQL-16.9  | PostgreSQL operator deployment -- sets up the operator                           |
| 0 min 39 sec  | 0 min 22 sec   | local-v1.25.16-PostgreSQL-16.9 | Available Architectures -- manages each available architecture                   |
| 0 min 32 sec  | 0 min 24 sec   | local-v1.26.15-PostgreSQL-16.9 | Managed services tests -- should create and delete a rw managed service          |
| 0 min 30 sec  | 0 min 24 sec   | local-v1.26.15-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- can create roles specified in the |
|               |                |                                | managed roles stanza                                                             |
| 0 min 30 sec  | 0 min 25 sec   | local-v1.26.15-PostgreSQL-16.9 | Managed services tests -- should properly handle replace update strategy         |
| 0 min 29 sec  | 0 min 24 sec   | local-v1.25.16-PostgreSQL-16.9 | Managed services tests -- should properly handle disabledDefaultServices field   |
| 0 min 23 sec  | 0 min 15 sec   | local-v1.27.16-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup --         |
|               |                |                                | immediately starts a backup using ScheduledBackups 'immediate' option            |
| 0 min 22 sec  | 0 min 19 sec   | local-v1.26.15-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Volume Snapshot -- can take a snapshot      |
|               |                |                                | targeting the primary                                                            |
| 0 min 19 sec  | 0 min 17 sec   | local-v1.25.16-PostgreSQL-16.9 | Verify Volume Snapshot - Declarative Volume Snapshot -- can take a snapshot in a |
|               |                |                                | single instance cluster                                                          |
| 0 min 19 sec  | 0 min 17 sec   | local-v1.27.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the volume snapshot backup using the plugin and verify the backup  |
| 0 min 19 sec  | 0 min 7 sec    | local-v1.26.15-PostgreSQL-16.9 | MinIO - Backup and restore - using minio as object storage for backup -- verify  |
|               |                |                                | tags in backed files                                                             |
| 0 min 17 sec  | 0 min 6 sec    | local-v1.33.1-PostgreSQL-16.9  | Azurite - Backup and restore - using Azurite blobs as object storage --          |
|               |                |                                | immediately starts a backup using ScheduledBackups immediate option              |
| 0 min 14 sec  | 0 min 10 sec   | local-v1.26.15-PostgreSQL-16.9 | Declarative database management - in a plain vanilla cluster - when Database CRD |
|               |                |                                | reclaim policy is set to retain -- can manage a declarative database and release |
|               |                |                                | it                                                                               |
| 0 min 14 sec  | 0 min 12 sec   | local-v1.26.15-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces and volumesnapshot support |
|               |                |                                | -- can create the volume snapshot backup declaratively and verify the backup     |
| 0 min 8 sec   | 0 min 5 sec    | local-v1.27.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can create the backup   |
|               |                |                                | and verify content in the object store                                           |
| 0 min 6 sec   | 0 min 4 sec    | local-v1.26.15-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can update role membership and    |
|               |                |                                | verify changes in db                                                             |
| 0 min 6 sec   | 0 min 2 sec    | local-v1.27.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- can update role attributes in the |
|               |                |                                | spec and they are applied in the database                                        |
| 0 min 4 sec   | 0 min 1 sec    | local-v1.26.15-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can update role password in       |
|               |                |                                | secrets and db and verify the connectivity                                       |
| 0 min 3 sec   | 0 min 0 sec    | local-v1.26.15-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can add role with all attribute   |
|               |                |                                | omitted and verify it is default                                                 |
| 0 min 2 sec   | 0 min 1 sec    | local-v1.25.16-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can drop role with ensure absent  |
|               |                |                                | option                                                                           |
| 0 min 2 sec   | 0 min 1 sec    | local-v1.33.1-PostgreSQL-16.9  | Managed roles tests - plain vanilla cluster -- Can update role comment and       |
|               |                |                                | verify changes in db                                                             |
| 0 min 2 sec   | 0 min 2 sec    | local-v1.27.16-PostgreSQL-16.9 | Tablespaces tests - on a new cluster with tablespaces -- can update the cluster  |
|               |                |                                | to set a tablespace as temporary                                                 |
| 0 min 2 sec   | 0 min 0 sec    | local-v1.26.15-PostgreSQL-16.9 | Managed roles tests - plain vanilla cluster -- Can update role password          |
|               |                |                                | validUntil and verify in the database                                            |
| 0 min 1 sec   | 0 min 0 sec    | local-v1.33.1-PostgreSQL-16.9  | Tablespaces tests - on a new cluster with tablespaces -- can update the cluster  |
|               |                |                                | by change the owner of tablespace                                                |
