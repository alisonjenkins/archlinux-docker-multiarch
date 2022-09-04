build:
  #!/bin/bash
  export IMAGE_TAG=$(date +%Y-%m-%d)
  docker buildx build --progress=auto --push --platform=linux/amd64,linux/arm64 -t alanjjenkins/archlinux:$IMAGE_TAG -f Dockerfile .
