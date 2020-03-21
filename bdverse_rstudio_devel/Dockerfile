FROM  rocker/rstudio-daily:devel

MAINTAINER tomer.gu@gmail.com

RUN echo "deb http://security.debian.org/debian-security jessie/updates main" >> /etc/apt/sources.list


RUN apt-get update -y && apt-get install -y --no-install-recommends \
	libpng-dev \
	libv8-dev \
	libgeos-dev \
	libjq-dev \
	texlive \
	libxml2-dev \
	libgdal-dev \
	xdg-utils \
	libssl1.0.0 \
	libcurl4-openssl-dev \
	unixodbc-dev \
	gdebi-core

RUN R -e "options(repos = list(CRAN = 'https://mran.microsoft.com/snapshot/2020-03-20/')); \
  install.packages('remotes'); \
  remotes::install_github('bd-R/bdverse'); \
  remotes::install_github('bd-R/dashboard.demo')"

ADD bdverse_script.R /home/rstudio/
