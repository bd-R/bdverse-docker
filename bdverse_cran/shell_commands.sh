
# Make the image from the directory with the Dockerfile
docker build --build-arg WHEN=2019-06-01 -t from-cran bdverse_cran
# Log into the Docker Hub from the command line
docker login --username=tomgu 
# Check the image ID using
docker images
# Tag your image
docker tag baaaf1159511 bdverse/from-cran:June
# Push your image to the repository you created
docker push bdverse/from-cran:June

docker rmi b54794abe5a0
# Run the image and connect to the RStudio port
docker run --rm -e PASSWORD=t1234 -p 8787:8787 -d bdverse-cran:june

# Run the image, but this time attach a volume
docker run --rm -e PASSWORD=t1234 -p 8787:8787 -v //$(pwd)/bdverse_cran/data://home/rstudio/data depend-cran

# Change port
docker run --rm -e PASSWORD=t1234 -p 28787:8787 -v //$(pwd)/bdclean/data://home/rstudio/data bdclean-cean

# list docker containers
docker ps 

# stop the relevant container
docker stop 666461b1b612

# Kill all containers
docker kill $(docker ps -a -q)
docker rm  $(docker ps -q -a)

docker system df
