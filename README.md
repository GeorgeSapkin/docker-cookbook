Docker Cookbook
===============

Docker scripts for FoundationDB server on CentOS.

Uses official Docker [CentOS image](https://index.docker.io/_/centos/ "Official CentOS image on Docker index").

CentOS supervisor adapted from [supervisor](https://github.com/Krijger/docker-cookbooks/tree/master/supervisor "supervisor") by Krijger

FoundationDB configuration adapted from [sql-layer-docker](https://bitbucket.org/mmcm/sql-layer-docker "sql-layer-docker")

## Build supervisor and FoundationDB image

```bash
cd centor-supervisor
./build.sh
cd centos-fdb
./build.sh
```

## Run server

```bash
cd centos-fdb
./run.sh
```
