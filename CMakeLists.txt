cmake_minimum_required(VERSION 3.10)
project(sampleproject)

enable_testing()
add_subdirectory(tools/googletest)

add_subdirectory(app)
