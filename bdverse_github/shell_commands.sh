
# Make the image from the directory with the Dockerfile
docker build -t from-github bdverse_github
# Log into the Docker Hub from the command line
docker login --username=tomgu
# Check the image ID using
docker images
# Tag your image
docker tag f86001d8494e bdverse/from-github:19-06-19
# Push your image to the repository you created
docker push bdverse/from-github:19-06-19

# Delete image
docker rmi b54794abe5a0

# Run the image and connect to the RStudio port
  
# Run the image, but this time attach a volume
docker run --rm -e PASSWORD=t1234 -p 8787:8787 -v //$(pwd)/bdverse_github/data://home/rstudio/data from-github

# Change port
docker run --rm -e PASSWORD=t1234 -p 28787:8787 -v //$(pwd)/bdverse_github/data://home/rstudio/data from-github

# Play with docker commands:
docker image pull bdverse/from-github:19-06-19
  docker run --rm -e PASSWORD=t1234 -p 8787:8787 bdverse/from-github:19-06-19

# list docker containers
docker ps 

# stop the relevant container
docker stop 666461b1b612

# Kill all containers
docker kill $(docker ps -a -q)
# Delete all containers
docker rm  $(docker ps -q -a)
# 
docker system df
