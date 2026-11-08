# Install script for directory: /workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "fmt_core" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/out/linux-arm64/libfmtd.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "fmt_core" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fmt" TYPE FILE FILES
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/args.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/base.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/chrono.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/color.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/compile.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/core.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/format.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/format-inl.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/os.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/ostream.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/printf.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/ranges.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/std.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/fmt/include/fmt/xchar.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "fmt_core" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/fmt/fmt-config.cmake"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/fmt/fmt-config-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "fmt_core" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake"
         "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/fmt/CMakeFiles/Export/b834597d9b1628ff12ae4314c3a2e4b8/fmt-targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/fmt/CMakeFiles/Export/b834597d9b1628ff12ae4314c3a2e4b8/fmt-targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/fmt/CMakeFiles/Export/b834597d9b1628ff12ae4314c3a2e4b8/fmt-targets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "fmt_core" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/fmt/fmt.pc")
endif()

