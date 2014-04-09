FoundationDB in CentOS
======================

Docker recepie for FoundationDB server on CentOS. Requires base [CentOS Supervisor image](https://github.com/GeorgeSapkin/docker-cookbook/tree/master/centos-supervisor "CentOS Supervisor").

Uses official Docker [CentOS image](https://index.docker.io/_/centos/ "Official CentOS image on Docker index").

FoundationDB configuration adapted from [sql-layer-docker](https://bitbucket.org/mmcm/sql-layer-docker "sql-layer-docker").

## Build FoundationDB image

```bash
./build.sh
```

## Run server

```bash
./run.sh
```
