#!/bin/bash
URL=https://gitlab.com
# Coloque o token do seu projeto
TOKEN=t3_YGnR6BxUusx6yzX2dwq5
EXECUTOR=docker
DEFAULT_IMAGE=alpine:latest

gitlab-runner register -n --url $URL --token $TOKEN --executor $EXECUTOR --docker-image $DEFAULT_IMAGE
