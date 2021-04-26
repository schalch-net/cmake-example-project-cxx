set(COMPONENT_NAME example)

message("processing component ${COMPONENT_NAME}...")

# library for this component
add_library(${COMPONENT_NAME})

target_sources(${COMPONENT_NAME}
        PRIVATE
                src/ExampleApp.cpp
        )

target_include_directories(${COMPONENT_NAME}
        PUBLIC
                include
        PRIVATE
                src
        )

# unit test executable for this component
add_executable(${COMPONENT_NAME}_test)

file(GLOB TEST_SOURCES "test/*.c*")
target_sources(${COMPONENT_NAME}_test
        PRIVATE 
                ${TEST_SOURCES}
        )

target_link_libraries(${COMPONENT_NAME}_test PRIVATE gtest_main)

target_include_directories(${COMPONENT_NAME}_test
        PRIVATE
                test
        )

# add this test library such that it is executed when calling 'ctest'
add_test(NAME ${COMPONENT_NAME}_test COMMAND ${COMPONENT_NAME}_test)
