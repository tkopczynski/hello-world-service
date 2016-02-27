#!/bin/bash

docker run -v "$(pwd)":/go -w /go -e CGO_ENABLED=0 golang:1.5.3 go build hello-world-service.go