#!/bin/bash

sleep 120
cd /home/ubuntu/app/docker && sudo docker pull hmarks/fedexday:latest

docker kill my_fedexday && docker rm my_fedexday || echo "No such docker container"

docker run --name my_fedexday -p 3000:3000 -p 4200:4200 -d hmarks/fedexday
docker cp /home/ubuntu/app/appenv/.env my_fedexday:/usr/src/app/
docker restart my_fedexday

rm /home/ubuntu/app/appenv/.env
