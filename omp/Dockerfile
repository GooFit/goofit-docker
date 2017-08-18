FROM rootproject/root-ubuntu16
MAINTAINER Henry Schreiner <henry.schreiner@uc.edu>

# Updated 2017-8-18
WORKDIR /home/sftnight
RUN git clone --branch=stable --recursive https://github.com/GooFit/GooFit.git
RUN mkdir /home/sftnight/GooFit/build
WORKDIR /home/sftnight/GooFit/build

RUN cmake .. -DGOOFIT_DEVICE=OMP -Wno-dev
RUN make -j$(nproc)

CMD ["bash"]
