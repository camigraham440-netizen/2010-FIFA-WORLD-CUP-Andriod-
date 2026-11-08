# Install script for directory: /workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3

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

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/sdl3.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/out/linux-arm64/libSDL3d.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/out/linux-arm64/libSDL3_testd.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake"
         "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3headersTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3headersTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3headersTargets.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3staticTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3staticTargets.cmake"
         "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3staticTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3staticTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3staticTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3staticTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3staticTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake"
         "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3/SDL3testTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/CMakeFiles/Export/35815d1d52a6ea1175d74784b559bdb6/SDL3testTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/SDL3" TYPE FILE FILES
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/SDL3Config.cmake"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/SDL3ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL3" TYPE FILE FILES
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_assert.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_asyncio.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_atomic.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_audio.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_begin_code.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_bits.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_blendmode.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_camera.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_clipboard.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_close_code.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_copying.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_cpuinfo.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_dialog.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_dlopennote.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_egl.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_endian.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_error.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_events.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_filesystem.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_gamepad.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_gpu.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_guid.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_haptic.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_hidapi.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_hints.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_init.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_intrin.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_iostream.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_joystick.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_keyboard.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_keycode.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_loadso.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_locale.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_log.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_main.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_main_impl.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_messagebox.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_metal.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_misc.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_mouse.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_mutex.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_oldnames.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengl.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengl_glext.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengles.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengles2.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengles2_gl2.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengles2_gl2ext.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengles2_gl2platform.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_opengles2_khrplatform.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_openxr.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_pen.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_pixels.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_platform.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_platform_defines.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_power.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_process.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_properties.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_rect.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_render.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_scancode.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_sensor.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_stdinc.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_storage.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_surface.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_system.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_thread.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_time.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_timer.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_touch.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_tray.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_version.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_video.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_vulkan.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/app/.cxx/Debug/4t6i8251/arm64-v8a/fifa-game/rexglue-sdk/thirdparty/sdl3/include-revision/SDL3/SDL_revision.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/SDL3" TYPE FILE FILES
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_assert.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_common.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_compare.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_crc32.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_font.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_fuzzer.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_harness.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_log.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_md5.h"
    "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/include/SDL3/SDL_test_memory.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/licenses/SDL3" TYPE FILE FILES "/workspaces/2010-FIFA-WORLD-CUP-Andriod-/.private-upload/rexglue-sdk/thirdparty/sdl3/LICENSE.txt")
endif()

