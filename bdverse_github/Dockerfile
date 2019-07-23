FROM rocker/rstudio:latest 

MAINTAINER tomer.gu@gmail.com

RUN apt-get update \
  && apt-get install -y --no-install-recommends\
	libpng-dev \
	libv8-dev \
	libgeos-dev \
	libjq-dev \
	texlive \
	libxml2-dev

RUN R -e "install.packages('remotes'); \
  remotes::install_github('bd-R/bdDwC'); \
  remotes::install_github('bd-R/bdchecks'); \
  remotes::install_github('bd-R/bdclean@new_bdclean')"


ADD bdverse_github_script.R /home/rstudio/
