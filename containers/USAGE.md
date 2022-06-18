# Usage

These are instructions for using and testing this docker image locally

## How to build

```sh
docker build -t withersj888/weather-forecast:v1.0 . # From containers directory
```

## How to run

```sh
docker run --name weather-forecast -d -p 80:5000 -p 2222:2222 withersj888/weather-forecast:v1.0
```

## How to test the API end point

```sh
curl http://localhost/weatherforecast
```

## How to test SSH

```sh
docker exec -it weather-forecast /bin/bash
```