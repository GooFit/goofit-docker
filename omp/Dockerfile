FROM rootproject/root-ubuntu16:latest
LABEL maintainer Henry Schreiner <henry.schreiner@uc.edu>

# Updated 2017-12-08 with GooFit 2.1
WORKDIR /
RUN git clone --branch=2.1 --recursive https://github.com/GooFit/GooFit.git

RUN mkdir /GooFit/build
WORKDIR /GooFit/build
RUN cmake .. -DGOOFIT_DEVICE=OMP && \
    make -j$(nproc)

CMD ["bash"]
