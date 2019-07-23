FROM rocker/rstudio

MAINTAINER tomer.gu@gmail.com

ARG WHEN

RUN apt-get update \
  && apt-get install -y --no-install-recommends\
	libpng-dev \
	libv8-dev \
	libgeos-dev \
	libjq-dev \
	texlive \
	libxml2-dev

RUN R -e "install.packages(c('bdclean','bdchecks','bdDwC'), repos = 'http://mran.revolutionanalytics.com/snapshot/${WHEN}')"


ADD bdverse_cran_script.R /home/rstudio/
