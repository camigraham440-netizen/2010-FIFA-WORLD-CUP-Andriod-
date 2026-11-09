cmake_minimum_required(VERSION 3.25)
project(worldcup2010 LANGUAGES C CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(REXSDK_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../.private-upload/rexglue-sdk" CACHE PATH "ReXGlue SDK")
set(FIFA_SOURCE_DIR "${CMAKE_CURRENT_LIST_DIR}/../../../../.private-upload/fifa-pc-port-src/Installer/recomp-template")
if(NOT EXISTS "${REXSDK_DIR}/CMakeLists.txt")
    message(FATAL_ERROR "ReXGlue SDK not found: ${REXSDK_DIR}")
endif()

if(NOT EXISTS "${FIFA_SOURCE_DIR}/generated/rexglue.cmake")
    message(FATAL_ERROR "Generated FIFA sources not found")
endif()


add_subdirectory("${FIFA_SOURCE_DIR}" fifa-game)
