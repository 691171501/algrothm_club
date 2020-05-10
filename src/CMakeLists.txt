cmake_minimum_required(VERSION 3.14)
project(algorithm_club)

set(CMAKE_CXX_STANDARD 17)

add_executable(algorithm_club main.cpp)

add_executable(RBTree.benchmark RBTree.benchmark.cc)

TARGET_LINK_LIBRARIES(RBTree.benchmark
        benchamark
        pthread)

add_executable(RBTree.test RBTree.test.cc)
TARGET_LINK_LIBRARIES(RBTree.test
        glog
        gflags
        gtest
        pthread)