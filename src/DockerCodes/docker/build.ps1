docker image build -t accountingbook -f ./docker/web/Dockerfile .
docker image build -t accountingbookdb -f ./docker/db/Dockerfile .

docker run --name accountingbook-docker -p 5000:5000 accountingbook
docker run --name accountingbookdb-docker -e PGDATA=/tmp -d -p 5433:5432 accountingbookdb


#docker run --name accountingbookdb-docker -e PGDATA=/tmp -d -p 5433:5432 -v ${PWD}:/var/lib/postgresql/data accountingbookdb
