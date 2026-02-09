# Install script for directory: /home/jasem/Projects/development/kde/xplanet

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/home/jasem/Projects/development/kde/xplanet/build/src/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/man/man1/xplanet.1")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/man/man1" TYPE FILE FILES "/home/jasem/Projects/development/kde/xplanet/xplanet.1")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/rgb.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet" TYPE FILE FILES "/home/jasem/Projects/development/kde/xplanet/xplanet/rgb.txt")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/arcs/README;/usr/share/xplanet/arcs/constellations")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/arcs" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/arcs/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/arcs/constellations"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/config/README;/usr/share/xplanet/config/default;/usr/share/xplanet/config/earth_markers;/usr/share/xplanet/config/moon_orbit;/usr/share/xplanet/config/overlay_clouds")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/config" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/config/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/config/default"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/config/earth_markers"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/config/moon_orbit"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/config/overlay_clouds"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/ephemeris/README")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/ephemeris" TYPE FILE FILES "/home/jasem/Projects/development/kde/xplanet/xplanet/ephemeris/README")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/fonts/README;/usr/share/xplanet/fonts/FreeMonoBold.ttf")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/fonts" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/fonts/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/fonts/FreeMonoBold.ttf"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/images/README;/usr/share/xplanet/images/earth.jpg;/usr/share/xplanet/images/hubble.png;/usr/share/xplanet/images/iss.png;/usr/share/xplanet/images/mgs.png;/usr/share/xplanet/images/night.jpg;/usr/share/xplanet/images/odyssey.png;/usr/share/xplanet/images/shuttle.png;/usr/share/xplanet/images/smile.png;/usr/share/xplanet/images/sublunar.png;/usr/share/xplanet/images/subsolar.png;/usr/share/xplanet/images/sun.jpg")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/images" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/earth.jpg"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/hubble.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/iss.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/mgs.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/night.jpg"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/odyssey.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/shuttle.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/smile.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/sublunar.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/subsolar.png"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/images/sun.jpg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/markers/README;/usr/share/xplanet/markers/brightStars;/usr/share/xplanet/markers/earth;/usr/share/xplanet/markers/mars;/usr/share/xplanet/markers/moon")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/markers" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/markers/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/markers/brightStars"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/markers/earth"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/markers/mars"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/markers/moon"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/origin/README;/usr/share/xplanet/origin/cassini;/usr/share/xplanet/origin/galileo")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/origin" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/origin/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/origin/cassini"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/origin/galileo"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/satellites/README;/usr/share/xplanet/satellites/iss;/usr/share/xplanet/satellites/iss.tle")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/satellites" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/satellites/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/satellites/iss"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/satellites/iss.tle"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/scattering/README;/usr/share/xplanet/scattering/earthRayleigh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/scattering" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/scattering/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/scattering/earthRayleigh"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/spice/README;/usr/share/xplanet/spice/asteroids;/usr/share/xplanet/spice/asteroids.krn;/usr/share/xplanet/spice/cassini;/usr/share/xplanet/spice/cassini.krn;/usr/share/xplanet/spice/mgs;/usr/share/xplanet/spice/mgs.krn;/usr/share/xplanet/spice/voyager;/usr/share/xplanet/spice/voyager.krn")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/spice" TYPE FILE FILES
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/README"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/asteroids"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/asteroids.krn"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/cassini"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/cassini.krn"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/mgs"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/mgs.krn"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/voyager"
    "/home/jasem/Projects/development/kde/xplanet/xplanet/spice/voyager.krn"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/share/xplanet/stars/BSC")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  file(INSTALL DESTINATION "/usr/share/xplanet/stars" TYPE FILE FILES "/home/jasem/Projects/development/kde/xplanet/xplanet/stars/BSC")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/jasem/Projects/development/kde/xplanet/build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
if(CMAKE_INSTALL_COMPONENT)
  if(CMAKE_INSTALL_COMPONENT MATCHES "^[a-zA-Z0-9_.+-]+$")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
  else()
    string(MD5 CMAKE_INST_COMP_HASH "${CMAKE_INSTALL_COMPONENT}")
    set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INST_COMP_HASH}.txt")
    unset(CMAKE_INST_COMP_HASH)
  endif()
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/home/jasem/Projects/development/kde/xplanet/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
