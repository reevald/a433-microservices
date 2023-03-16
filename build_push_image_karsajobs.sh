#! /bin/sh
# 1) Membuild Docker image dari berkas Dockerfile
docker build -f Dockerfile -t ghcr.io/reevald/karsajobs:latest .
# 2) Login ke GitHub Packages
echo $CR_PAT | docker login ghcr.io -u reevald --password-stdin
# 3) Push image ke GitHub Packages
docker push ghcr.io/reevald/karsajobs:latest