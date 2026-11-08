# Install script for directory: /workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/codespace/android-sdk/ndk/27.0.12077973/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/xxHash/cmake_unofficial/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/disasm/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/fmt/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/spdlog/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/utfcpp/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/vulkan-headers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/vulkan-memory-allocator/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/spirv-headers/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/glslang/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tracy" TYPE DIRECTORY FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/tracy/public/tracy" FILES_MATCHING REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.h$" REGEX "/[^/]*\\.hmm$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tracy" TYPE DIRECTORY FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/tracy/public/client" FILES_MATCHING REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.h$")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/tracy" TYPE DIRECTORY FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/tracy/public/common" FILES_MATCHING REGEX "/[^/]*\\.hpp$" REGEX "/[^/]*\\.h$")
endif()

