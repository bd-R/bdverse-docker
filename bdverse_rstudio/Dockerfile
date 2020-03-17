FROM rocker/rstudio:3.6.2

MAINTAINER tomer.gu@gmail.com


RUN apt-get update \
  && apt-get install -y --no-install-recommends\
	libpng-dev \
	libv8-dev \
	libgeos-dev \
	libjq-dev \
	texlive \
	libxml2-dev\
	libgdal-dev \
	xdg-utils

RUN R -e "options(repos = list(CRAN = 'https://cran.microsoft.com/snapshot/2020-03-15/')); \
  install.packages('remotes'); \
  remotes::install_github('bd-R/bdverse'); \
  remotes::install_github('bd-R/dashboard.demo')"

ADD bdverse_script.R /home/rstudio/
