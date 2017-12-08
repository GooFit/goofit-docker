

This is the repository holding the Dockerfiles for `goofit/goofit-omp` and `goofit/goofit-cuda`.

Great instructions for getting graphics in a Docker container can be found on the [ROOT Docker page](https://hub.docker.com/r/rootproject/root-ubuntu16).


To build, in the cuda directory (substitute omp as needed):

```bash
docker build -t goofit/goofit-cuda .
docker tag goofit/goofit-cuda goofit/goofit-cuda:v2.1
docker login --username=$USER
docker push goofit/goofit-cuda
```


