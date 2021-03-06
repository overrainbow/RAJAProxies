##
## Copyright (c) 2017, Lawrence Livermore National Security, LLC.
##
## Produced at the Lawrence Livermore National Laboratory.
##
## LLNL-CODE-738930
##
## All rights reserved.
##
## This file is part of the RAJA Performance Suite.
##
## For details about use and distribution, please read raja-perfsuite/LICENSE.
##

set(RAJA_COMPILER "RAJA_COMPILER_ICC" CACHE STRING "")

set(CMAKE_CXX_COMPILER "/usr/local/bin/icpc-16.0.258" CACHE PATH "")
set(CMAKE_C_COMPILER "/usr/local/bin/icc-16.0.258" CACHE PATH "")

set(COMMON_FLAGS "-gnu-prefix=/usr/apps/gnu/4.9.3/bin/ -Wl,-rpath,/usr/apps/gnu/4.9.3/lib64 -std=c++17")
set(CMAKE_CXX_FLAGS_RELEASE "${COMMON_FLAGS} -O3 -march=native -ansi-alias" CACHE STRING "")
set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "${COMMON_FLAGS} -O3 -g -march=native -ansi-alias" CACHE STRING "")
set(CMAKE_CXX_FLAGS_DEBUG "${COMMON_FLAGS} -O0 -g" CACHE STRING "")

set(RAJA_RANGE_ALIGN 4 CACHE INT "")
set(RAJA_RANGE_MIN_LENGTH 32 CACHE INT "")
set(RAJA_DATA_ALIGN 64 CACHE INT "")
set(RAJA_COHERENCE_BLOCK_SIZE 64 CACHE INT "")

set(RAJA_HOST_CONFIG_LOADED On CACHE Bool "")
