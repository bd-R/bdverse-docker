# Make the image from the directory with the Dockerfile
docker build -t bdverse-rstudio bdverse_rstudio
# Log into the Docker Hub from the command line
docker login --username=tomgu
# Check the image ID using
docker images
# Tag your image
docker tag 640488b11fa5 bdverse/bdverse-rstudio:2020-03-15
# Push your image to the repository you created
docker push bdverse/bdverse-rstudio:2020-03-15

# Delete image
docker rmi 257269da6446

docker rmi -f 1569813a9126

# Pull an image from docker-hub
docker image pull bdverse/from-github:19-06-19

# Run the image, but this time attach a volume # Address: http://192.168.99.100:8787/
docker run --rm -e PASSWORD=t1234 -p 8787:8787 -v //$(pwd)/qa_github/data://home/rstudio/data bd-qa-github

# Change port
docker run --rm -e PASSWORD=t1234 -p 28787:8787 -v //$(pwd)/qa_github/data://home/rstudio/data qa-github

# Play with docker commands:
docker image pull bdverse/from-github:19-06-19
docker run --rm -e PASSWORD=t1234 -p 8787:8787 bdverse/from-github:19-06-19

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
