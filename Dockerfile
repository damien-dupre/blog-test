# This Dockerfile builds an environment for
# Achintya Rao's blog

# The base image comes from the good people at rocker-org
FROM rocker/geospatial:latest
ADD . /home/rstudio
WORKDIR /home/rstudio
RUN R -e "install.packages('blogdown')"
