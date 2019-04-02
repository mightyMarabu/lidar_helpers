FROM jupyter/jupyter/base-notebook
# Maintainer Sebastian Schmidt

USER root

RUN apt-get update && apt-get install -yq --no-install-recommends \ 
    liblas-c \
 && conda install pandas \
    geopandas \
    plotly \
    numpy \
    matplotlib\
    scipy \
 && conda install -c auto liblas \
 && rm -rf /var/lib/apt/lists/*
    
RUN mkdir data
