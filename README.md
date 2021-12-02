# docker550

This repository contains the 

(1) Dockerfile

(2) other resources to build the image.


Procedures to get results:

(1) pull image (ex_proj) from dockerhub:

docker pull ctianphilip/ex_proj

(2) creat a local folder to store the output (this folder is on your root directory):
mkdir ~/docker_output

(3) mount the output:
docker run -v ~/docker_output:/project/output ex_proj
