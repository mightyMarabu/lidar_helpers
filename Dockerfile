FROM jupyter/base-notebook
#jupyter/scipy-notebook
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
 && conda install -c auto liblas \
 && rm -rf /var/lib/apt/lists/*
    
RUN mkdir data
#jupyter/scipy-notebook
