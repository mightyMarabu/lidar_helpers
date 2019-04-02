FROM jupyter/minimal-notebook:latest
# Maintainer Sebastian Schmidt

USER root

RUN apt-get update && apt-get install -yq --no-install-recommends \ 
    python3-setuptools \
    python3-pip \
    liblas-c3 \
 && pip3 install pandas \
    geopandas \
    plotly \
    numpy \
    matplotlib\
    scipy \
    liblas \
    && rm -rf /var/lib/apt/lists/*
    
RUN mkdir data
