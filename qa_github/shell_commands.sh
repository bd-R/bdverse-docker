
# Make the image from the directory with the Dockerfile
docker build -t bd-qa-github qa_github
# Log into the Docker Hub from the command line
docker login --username=tomgu
# Check the image ID using
docker images
# Tag your image
docker tag aa91865942cb bdverse/qa-github:15_Oct-rstudio_3.6.1
# Push your image to the repository you created
docker push bdverse/qa-github:MRAN_Oct-rstudio_3.6.1

# Delete image
docker rmi d17de92016d1

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
