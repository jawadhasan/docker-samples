# escape=`
FROM ubuntu
RUN		mkdir /v1 && touch /v1/sample1.txt
VOLUME [ "/v1" ]

#docker image build -t ubuntu-with-volume -f ./Dockerfile .
#docker run -it --rm ubuntu-with-volume

#Linux command to create a file
#touch /v1/sample2.txt

#######Start a mango container and then map its volume to ubuntu container######################
# docker run -d --rm  --name mongo mongo //start a mango container
# docker run -it --volumes-from mongo ubuntu //map mango volume to ubuntu container
