#####1. use our own custom image######

#1.1. Run a container
docker run --network=netcorelogger_app-network --rm -it `
--name elasticdumpsample `
-v c:\backups\:/data elasticdumpsample

#1.2 Run elastic dump command inside the shell
elasticdump --input=http://elasticsearch:9200/perf-2020.11.26 --output=/data/perfindex.json --type=data



####2. Use a third-party image for the same####
docker run --network=netcorelogger_app-network --rm -it `
-v c:\backups\:/data taskrabbit/elasticsearch-dump --bulk=true `
--input=http://elasticsearch:9200/perf-2020.11.26  `
--output=/data/perf2020-11-26-mapping.json --type=mapping

docker run --network=netcorelogger_app-network --rm -it `
-v c:\backups\:/data taskrabbit/elasticsearch-dump --bulk=true `
--input=http://elasticsearch:9200/perf-2020.11.26  `
--output=/data/perf2020-11-26.json --type=data

# [8f48] is container-id [postgres example]
docker exec -t 8f48 pg-dump AccountingBook -c -U postgres > \backups\accountingbook.bak