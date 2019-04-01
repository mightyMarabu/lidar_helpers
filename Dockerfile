FROM ubuntu:18.04
# Maintainer: Sebastian Schmidt

RUN apt-get update \
    && apt-get install -y python3 \
    python3-pip \
    liblas-c3 \
    && pip3 install ipython \
    pandas \
    plotly \
    numpy \
    matplotlib\
    scipy.spatial \
    liblas \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir data
