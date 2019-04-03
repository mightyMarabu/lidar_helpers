    
FROM jupyter/base-notebook
#jupyter/scipy-notebook
# Maintainer Sebastian Schmidt

USER root

RUN apt-get update && apt-get install -yq --no-install-recommends \
    python3 \
    liblas-c3

COPY requirements.txt /tmp/

RUN pip3 install --requirement /tmp/requirements.txt && \
    fix-permissions $CONDA_DIR && \
    fix-permissions /home/$NB_USER
    
RUN mkdir data

