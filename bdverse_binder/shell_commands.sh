# Make the image from the directory with the Dockerfile
docker build -t bdverse-binder bdverse_binder
# Log into the Docker Hub from the command line
docker login --username=tomgu
# Check the image ID using
docker images
# Tag your image
docker tag 028f5342ab1b bdverse/bdverse-binder:2020-03-15
# Push your image to the repository you created
docker push bdverse/bdverse-binder:2020-03-15

# Delete image
docker rmi 257269da6446

docker rmi -f 1569813a9126

# Pull an image from docker-hub
docker image pull bdverse/bdverse-binder:2020-03-15

# Run the image, but this time attach a volume # Address: http://192.168.99.100:8787/
docker run --rm -e PASSWORD=t1234 -p 8787:8787 -v //$(pwd)/qa_github/data://home/rstudio/data bdverse/bdverse-binder:2020-03-15

# Change port
docker run --rm -e PASSWORD=t1234 -p 28787:8787 -v //$(pwd)/qa_github/data://home/rstudio/data bdverse/bdverse-binder:2020-03-15

# Play with docker commands:
docker image pull bdverse/bdverse-binder:2020-03-15
docker run --rm -e PASSWORD=t1234 -p 8787:8787 bdverse/bdverse-binder:2020-03-15

# list docker containers
docker ps 

# stop the relevant container
docker stop da3bc94beedd

# Kill all containers
docker kill $(docker ps -a -q)
# Delete all containers
docker rm  $(docker ps -q -a)
# Show docker disk usage
docker system df
