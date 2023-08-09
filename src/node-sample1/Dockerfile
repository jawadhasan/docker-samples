# escape=`
FROM node
LABEL	author="Jawad Hasan"
WORKDIR	/app
COPY	./server.js .
RUN		npm install
EXPOSE	3000
ENTRYPOINT	["node", "server.js"]

#docker image build -t nodesample1 -f ./Dockerfile .
#docker run --name nodeserver1 -p 3000:3000 nodesample1
