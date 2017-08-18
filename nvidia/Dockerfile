FROM nvidia/cuda:8.0-devel
LABEL maintainer Henry Schreiner <henry.schreiner@uc.edu>

ENV ROOTSYS="/opt/root" \
    PATH="$ROOTSYS/bin:$PATH" \
    LD_LIBRARY_PATH="$ROOTSYS/lib:$LD_LIBRARY_PATH" \
    PYTHONPATH="$ROOTSYS/lib:PYTHONPATH" 

RUN apt-get update && apt-get install -y \
    git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
    libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev \
    xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
    libmysqlclient-dev libfftw3-dev libcfitsio-dev \
    graphviz-dev libavahi-compat-libdnssd-dev \
    libldap2-dev python-dev libxml2-dev libkrb5-dev \
    libgsl0-dev libqt4-dev

COPY prepare.sh /prepare.sh
RUN chmod +x /prepare.sh

# In contrast to the docs, this unpacks ROOT
ADD https://root.cern.ch/download/root_v6.10.04.Linux-ubuntu16-x86_64-gcc5.4.tar.gz /opt
# Updated 8-18-2017 

RUN git clone --branch=stable --recursive https://github.com/GooFit/GooFit.git /GooFit && \
    mkdir /GooFit/build
WORKDIR /GooFit/build
RUN cmake .. -DGOOFIT_DEVICE=CUDA

# Building requires that you know the cards you plan to use
# so it should be done by the user in nvidia-docker

ENTRYPOINT ["/prepare.sh"]
CMD ["bash"]
