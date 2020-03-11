## Introduction

This repo aims to provide an extension for [apollo-build-scripts](https://github.com/nobodyiam/apollo-build-scripts).
Through it you can customize the JDBC parameters for `Apollo Docker Image`. 

## Build image
```
cd single-all-in-apollo/
docker build -t landykingdom/single-all-in-apollo:0.1 .
```

## Run container

- Prepare database. SQL files is here: https://github.com/nobodyiam/apollo-build-scripts/tree/master/sql
- Start a container.
  **start once**
  ```
  docker run -p 8080:8080 -p 8070:8070 \
   -e CONFIG_DB_HOST_PORT=192.168.50.72:3306 -e CONFIG_DB_USER=root -e CONFIG_DB_PASS=123456 \
   -e PORTAL_DB_HOST_PORT=192.168.50.72:3306 -e PORTAL_DB_USER=root -e PORTAL_DB_PASS=123456 \
   --rm landykingdom/single-all-in-apollo:0.1
  ```
  **start and run in background**
  ```
    docker run -p 8080:8080 -p 8070:8070 \
   -e CONFIG_DB_HOST_PORT=192.168.50.72:3306 -e CONFIG_DB_USER=root -e CONFIG_DB_PASS=123456 \
   -e PORTAL_DB_HOST_PORT=192.168.50.72:3306 -e PORTAL_DB_USER=root -e PORTAL_DB_PASS=123456 \
   -d landykingdom/single-all-in-apollo:0.1
  ```
- Open `http://localhost:8070` and login with `apollo/admin`.

## How to use apollo

See here: https://github.com/ctripcorp/apollo.