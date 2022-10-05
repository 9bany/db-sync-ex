#!bin/bash

echo "startup database for save data"
docker run --name postgres-has-data -p 35432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres 

echo "startup database for sync data"
docker run --name postgres-sync -p 35433:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -d postgres 