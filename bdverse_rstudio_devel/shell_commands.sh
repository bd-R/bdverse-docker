# Make the image from the directory with the Dockerfile
docker build -t bdverse-rstudio-devel bdverse_rstudio_devel
# Log into the Docker Hub from the command line
docker login --username=tomgu
# Check the image ID using
docker images
# Tag your image
docker tag ad54bb7c8c5d bdverse-rstudio-devel:2020-03-20
# Push your image to the repository you created
docker push bdverse/bdverse-rstudio-devel:2020-03-20

# Delete image
docker rmi adb10d40ed82

docker rmi -f f86001d8494e

# Pull an image from docker-hub
docker image pull bdverse/bdverse-rstudio:2020-03-15

# Run the image, but this time attach a volume # Address: http://192.168.99.100:8787/
docker run --rm -e PASSWORD=t1234 -p 28787:8787 -v //$(pwd)/bdverse_rstudio_devel/data://home/rstudio/data bdverse/bdverse-rstudio-devel:2020-03-20

docker run --rm -e PASSWORD=t1234 -p 3838:3838 -p 8787:8787 -e ADD=shiny -v //$(pwd)/bdverse_rstudio/data://home/rstudio/data bdverse/bdverse-rstudio:2020-03-15

docker run --rm -e PASSWORD=t1234 -p 38787:8787 bdverse/bdverse-rstudio-devel:2020-03-20


# Change port
docker run --rm -e PASSWORD=t1234 -p 28787:8787 -v //$(pwd)/qa_github/data://home/rstudio/data bdverse/bdverse-rstudio:2020-03-15

# Play with docker commands:
docker image pull bdverse/bdverse-rstudio:2020-03-15
docker run --rm -e PASSWORD=t1234 -p 8787:8787 bdverse/bdverse-rstudio:2020-03-15

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
