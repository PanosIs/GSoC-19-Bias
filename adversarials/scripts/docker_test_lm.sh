#!/usr/bin/env bash
echo 'y' | docker image prune
docker build -f docker/test_lm/Dockerfile --tag test_language_model .
docker run --rm -it --runtime=nvidia -v "$(pwd)/resources":/app/resources test_language_model /bin/bash