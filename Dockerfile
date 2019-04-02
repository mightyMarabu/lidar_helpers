FROM jupyter/minimal-notebook:latest
# Maintainer Sebastian Schmidt

USER root

RUN apt-get update && apt-get install -yq --no-install-recommends \ 
    liblas-c3 \
 && conda install pandas \
    geopandas \
    plotly \
    numpy \
    matplotlib\
    scipy \
    -c auto liblas \
 && rm -rf /var/lib/apt/lists/*
    
RUN mkdir data
