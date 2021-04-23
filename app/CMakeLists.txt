cmake_minimum_required(VERSION 3.10)
project(sampleapp)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME}
    PRIVATE 
        main.cpp
)

target_include_directories(${PROJECT_NAME}
                        PUBLIC
                           "${PROJECT_BINARY_DIR}"
                           )

# add components
add_subdirectory(components/example)

target_link_libraries(${PROJECT_NAME}
        PRIVATE
                example)

                           