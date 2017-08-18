FROM rootproject/root-ubuntu16:latest
LABEL maintainer Henry Schreiner <henry.schreiner@uc.edu>

# Updated 2017-8-18
WORKDIR ${HOME}
RUN git clone --branch=stable --recursive https://github.com/GooFit/GooFit.git

RUN mkdir ${HOME}/GooFit/build
WORKDIR ${HOME}/GooFit/build
RUN cmake .. -DGOOFIT_DEVICE=OMP && \
    make -j$(nproc)

CMD ["bash"]
