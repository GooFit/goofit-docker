FROM rootproject/root-ubuntu16:latest
LABEL maintainer Henry Schreiner <henry.schreiner@uc.edu>

# Updated 2017-12-08 with GooFit 2.1
WORKDIR ${HOME}
RUN git clone --branch=2.1 --recursive https://github.com/GooFit/GooFit.git

RUN mkdir ${HOME}/GooFit/build
WORKDIR ${HOME}/GooFit/build
RUN cmake .. -DGOOFIT_DEVICE=OMP && \
    make -j$(nproc)

CMD ["bash"]
