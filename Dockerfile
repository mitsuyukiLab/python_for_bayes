FROM continuumio/miniconda3
USER root
WORKDIR /usr/src/app
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    sudo \
    fonts-takao-gothic \
    g++ \
    less \
    gcc-7 \
    g++-7 \
    gfortran-7 \
    git && \
    apt-get clean

RUN conda update -n base -c defaults conda
RUN conda install -c conda-forge pymc3
RUN conda install seaborn bokeh jupyter jupyterlab scikit-learn tqdm numpy
RUN conda install -c conda-forge arviz=0.11.0

RUN jupyter serverextension enable --py jupyterlab

ENV DEBIAN_FRONTEND dialog