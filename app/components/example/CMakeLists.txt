set(COMPONENT_NAME example)

add_library(${COMPONENT_NAME})

message("processing component ${COMPONENT_NAME}...")

target_sources(${COMPONENT_NAME}
        PRIVATE
                src/ExampleApp.cpp)

target_include_directories(${COMPONENT_NAME}
        PUBLIC
                include
        PRIVATE
                src
        )
