FROM rocker/binder:latest 

MAINTAINER tomer.gu@gmail.com
USER root


RUN apt-get update \
  && apt-get install dialog apt-utils -y --no-install-recommends \
	libpng-dev \
	libv8-dev \
	libgeos-dev \
	libjq-dev \
	texmaker \
	libxml2-dev\
	libgdal-dev \
	xdg-utils


RUN R -e "options(repos = list(CRAN = 'https://cran.microsoft.com/snapshot/2020-03-15/')); \
  install.packages('remotes'); \
  remotes::install_github('bd-R/bdverse'); \
  remotes::install_github('bd-R/dashboard.demo'); \
  tinytex::install_tinytex()"