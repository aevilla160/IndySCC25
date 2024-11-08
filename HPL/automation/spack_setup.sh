#!bin/bash

cd ~

$ export SPACK_ROOT=/path/spack

$ git clone -c feature.manyFiles=true https://github.com/spack/spack.git ${SPACK_ROOT}
$ source ${SPACK_ROOT}/share/spack/setup-env.sh
$ spack --help

export SPACK_ROOT=/path/spack
source ${SPACK_ROOT}/share/spack/setup-env.sh

spack compilers find