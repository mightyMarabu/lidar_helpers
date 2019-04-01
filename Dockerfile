from jupyter/minimal-notebook
# Maintainer Sebastian Schmidt

RUN apt-get update && apt-get install -yq --no-install-recommends \ 
    python3 \
    python3-pip \
    liblas-c3 \
 # lidar libs   
    && pip3 install pandas \
    geopandas \
    plotly \
    numpy \
    matplotlib\
    scipy \
    liblas \
    && rm -rf /var/lib/apt/lists/*
    
RUN mkdir data
