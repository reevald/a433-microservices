#! /bin/sh
# 1) Perintah untuk membuat Docker image dari Dockerfile yang tadi dibuat, dengan nama image item-app, dan memiliki tag v1.
docker build -t item-app:v1 .
# 2) Melihat daftar image di lokal
docker images
# 3) Mengubah nama image agar sesuai dengan format Docker Hub / GitHub Packages via Terminal
docker tag item-app:v1 ghcr.io/reevald/item-app:v1
# 4) Login ke Docker Hub / GitHub Packages via Terminal
# Ref: https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-to-the-container-registry
echo $CR_PAT | docker login ghcr.io -u reevald --password-stdin
# 5) Menggunggah image ke Docker Hub / GitHub Packages
docker push ghcr.io/reevald/item-app:v1