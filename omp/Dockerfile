FROM henryiii/root6:latest
MAINTAINER Henry Schreiner <henry.schreiner@uc.edu>

# Updated 2017-2-14
RUN cd / && git clone https://github.com/GooFit/GooFit.git && cd GooFit && git checkout mpi

WORKDIR /GooFit

RUN mkdir build && cd build && cmake ..\
    -DGOOFIT_DEVICE=OMP -DGOOFIT_EXAMPLES=ON -DGOOFIT_PROJECTS=ON -DGOOFIT_SEPARATE_COMP=ON \
    && make -j2

CMD ["bash"]
