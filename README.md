# Docker Samples

## Ubuntu Example

Dockerfile for ubuntu

- `docker image build -t ubuntu-with-nano .`
- `docker run --name ubuntu-with-nano ubuntu-with-nano`

## NodeJS Example

- `docker image build -t nodesample1 -f ./Dockerfile .`
- `docker run --name nodeserver1 -p 3000:3000 nodesample1`

## Volume Example

- `docker image build -t ubuntu-with-volume -f ./Dockerfile .`
- `docker run -it --rm ubuntu-with-volume`

Linux command to create a file
- `touch /v1/sample2.txt`

## pg-dump Example

- `docker exec -t 8f48 pg-dump AccountingBook -c -U postgres > \backups\accountingbook.bak`

8f48 is container-id [postgres example]

## Volume PG Example

- `docker run --name accountingbookdb-docker -e PGDATA=/tmp -d -p 5433:5432 accountingbookdb`
- `docker run --name accountingbookdb-docker -e PGDATA=/tmp -d -p 5433:5432 -v ${PWD}:/var/lib/postgresql/data accountingbookdb`

## Retag and push to dockerhub

- `docker tag signalrbasicsetup jawadhasanshani/signalrbasicsetup`
- `docker push jawadhasanshani/signalrbasicsetup`

- `docker image build -t jawadhasanshani/signalrbasicsetup:v2`

- `docker push jawadhasanshani/signalrbasicsetup:tagname`
- `docker pull jawadhasanshani/signalrbasicsetup`
