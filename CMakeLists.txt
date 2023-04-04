cmake_minimum_required(VERSION 3.24)
project ("artdlib-cpp")

add_subdirectory ("artd-lib-logger")
add_subdirectory ("artd-jlib-base")
add_subdirectory ("artd-jlib-thread")

if(IS_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/artd-jlib-io")
    add_subdirectory ("artd-jlib-io")

    if(IS_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/artd-jlib-net")
        add_subdirectory ("artd-jlib-net")
    endif()

endif()

