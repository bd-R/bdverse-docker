FROM rocker/rstudio:3.6.1 

MAINTAINER tomer.gu@gmail.com


RUN apt-get update \
  && apt-get install -y --no-install-recommends\
	libpng-dev \
	libv8-dev \
	libgeos-dev \
	libjq-dev \
	texlive \
	libxml2-dev\
	libgdal-dev

RUN R -e "install.packages('remotes'); \
  remotes::install_github('bd-R/bdverse')"


ADD bdverse_github_qa.R /home/rstudio/
