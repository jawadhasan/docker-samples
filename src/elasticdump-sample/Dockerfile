# escape=`
FROM node:alpine
RUN		npm install elasticdump -g
VOLUME [ "/data" ]
CMD [ "sh" ]

#docker image build -t elasticdumpsample .
#docker run --rm -it --name elasticdumpsample elasticdumpsample sh

#run container with volume mapping
#docker run --rm -it --name elasticdumpsample -v c:\backups\:/data elasticdumpsample

#run container with volume mapping and network
#docker run --network=netcorelogger_app-network --rm -it --name elasticdumpsample -v c:\backups\:/data elasticdumpsample

#execute dump
#elasticdump --input=http://elasticsearch:9200/perf-2020.11.26 --output=/data/perfindex.json --type=data