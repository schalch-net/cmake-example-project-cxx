cmake_minimum_required(VERSION 3.10)
project(sampleapp)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# app executable
add_executable(${PROJECT_NAME})

target_sources(${PROJECT_NAME}
        PRIVATE 
                main.cpp
        )

# test executable
# uncomment the following lines to add a global test executable. Alternatively, tests can be run by calling 'ctest'
# add_executable(${PROJECT_NAME}_test)
# file(GLOB TEST_SOURCES "*/*/test/*.c*" "test/*.c*")
# target_sources(${PROJECT_NAME}_test
#         PRIVATE 
#                 ${TEST_SOURCES}
#         )
# target_link_libraries(${PROJECT_NAME}_test
#         PRIVATE
#                 gtest_main
#         )

# add components
set(COMPONENT_LIST example)

foreach(COMPONENT IN LISTS COMPONENT_LIST)
        add_subdirectory(components/${COMPONENT})
endforeach()

target_link_libraries(${PROJECT_NAME}
        PRIVATE
                ${COMPONENT_LIST}
        )
