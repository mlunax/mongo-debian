# mongo-debian
MongoDB Debian Docker

## Before run
If you want custom startup arguments set env `START_ARGS`.

## Bulding and run
Only build the image

``` 
docker-compose build 
```

Build and RUN database

``` 
docker-compose up -d db 
```


## Usage
Using client

``` 
docker-compose run --rm client 
```
