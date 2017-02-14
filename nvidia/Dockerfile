FROM nvidia/cuda:8.0-devel
LABEL maintainer Henry Schreiner <henry.schreiner@uc.edu>

ENV ROOTSYS         "/opt/root"
ENV PATH            "$ROOTSYS/bin:$PATH"
ENV LD_LIBRARY_PATH "$ROOTSYS/lib:$LD_LIBRARY_PATH"
ENV PYTHONPATH      "$ROOTSYS/lib:PYTHONPATH"

ADD https://root.cern.ch/download/root_v6.08.04.Linux-ubuntu16-x86_64-gcc5.4.tar.gz /tmp/root.tar.gz
RUN tar xzf /tmp/root.tar.gz -C /opt && rm /tmp/root.tar.gz

RUN apt-get update && apt-get install -y \
git dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev \
libxft-dev libxext-dev gfortran libssl-dev libpcre3-dev \
xlibmesa-glu-dev libglew1.5-dev libftgl-dev \
libmysqlclient-dev libfftw3-dev libcfitsio-dev \
graphviz-dev libavahi-compat-libdnssd-dev \
libldap2-dev python-dev libxml2-dev libkrb5-dev \
libgsl0-dev libqt4-dev

RUN echo "update" && cd / && git clone https://github.com/GooFit/GooFit.git && cd GooFit && git checkout mpi

WORKDIR /GooFit

RUN mkdir build && cd build && cmake ..\
    -DGOOFIT_DEVICE=CUDA -DGOOFIT_EXAMPLES=ON -DGOOFIT_PROJECTS=ON -DGOOFIT_SEPARATE_COMP=ON

CMD ["bash"]
