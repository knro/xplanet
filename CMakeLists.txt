cmake_minimum_required(VERSION 3.18)
project(xplanet VERSION 1.3.0 LANGUAGES C CXX)

# Set default build type
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE RelWithDebInfo CACHE STRING "Choose the type of build." FORCE)
endif()

# Set default installation prefix to /usr
if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
    set(CMAKE_INSTALL_PREFIX "/usr" CACHE PATH "Installation prefix" FORCE)
endif()

# C++ standard
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Options for optional dependencies
option(WITH_X11 "Build with X11 support" ON)
option(WITH_FREETYPE "Build with Freetype support" ON)
option(WITH_PANGO "Build with Pango support" ON)
option(WITH_CSPICE "Build with CSPICE support" ON)
option(WITH_GIF "Build with GIF support" OFF)
option(WITH_JPEG "Build with JPEG support" ON)
option(WITH_PNG "Build with PNG support" ON)
option(WITH_PNM "Build with PNM support" OFF)
option(WITH_TIFF "Build with TIFF support" OFF)
option(WITH_XSCREENSAVER "Build with XScreenSaver support" ON)

# Platform detection
set(SEPARATOR "/")
if(WIN32)
    set(SEPARATOR "\\\\\\\\")
endif()

# Find dependencies
set(HAVE_LIBX11 OFF)
set(HAVE_LIBFREETYPE OFF)
set(HAVE_LIBPANGOFT2 OFF)
set(HAVE_CSPICE OFF)
set(HAVE_LIBGIF OFF)
set(HAVE_LIBJPEG OFF)
set(HAVE_LIBPNG OFF)
set(HAVE_LIBPNM OFF)
set(HAVE_LIBTIFF OFF)
set(HAVE_XSS OFF)
set(HAVE_AQUA OFF)
set(HAVE_CYGWIN OFF)

# X11
if(WITH_X11 AND NOT APPLE)
    find_package(X11)
    if(X11_FOUND)
        set(HAVE_LIBX11 ON)
        message(STATUS "X11 support: enabled")
        
        # XScreenSaver extension
        if(WITH_XSCREENSAVER)
            if(X11_Xscreensaver_FOUND)
                set(HAVE_XSS ON)
                message(STATUS "XScreenSaver support: enabled")
            else()
                message(STATUS "XScreenSaver support: disabled (library not found)")
            endif()
        endif()
    else()
        message(STATUS "X11 support: disabled (library not found)")
    endif()
endif()

# Freetype
if(WITH_FREETYPE)
    find_package(Freetype)
    if(FREETYPE_FOUND)
        set(HAVE_LIBFREETYPE ON)
        message(STATUS "Freetype support: enabled")
    else()
        message(STATUS "Freetype support: disabled (library not found)")
    endif()
endif()

# Pango
if(WITH_PANGO AND HAVE_LIBFREETYPE)
    find_package(PkgConfig)
    if(PKG_CONFIG_FOUND)
        pkg_check_modules(PANGOFT2 pangoft2>=1.2.0)
        if(PANGOFT2_FOUND)
            set(HAVE_LIBPANGOFT2 ON)
            message(STATUS "Pango support: enabled")
        else()
            message(STATUS "Pango support: disabled (library not found)")
        endif()
    endif()
endif()

# CSPICE
if(WITH_CSPICE)
    find_library(CSPICE_LIBRARY NAMES cspice)
    find_path(CSPICE_INCLUDE_DIR SpiceUsr.h)
    if(CSPICE_LIBRARY AND CSPICE_INCLUDE_DIR)
        set(HAVE_CSPICE ON)
        message(STATUS "CSPICE support: enabled")
    else()
        message(STATUS "CSPICE support: disabled (library not found)")
    endif()
endif()

# Image libraries
if(WITH_GIF)
    find_package(GIF)
    if(GIF_FOUND)
        set(HAVE_LIBGIF ON)
        message(STATUS "GIF support: enabled")
    else()
        message(STATUS "GIF support: disabled (library not found)")
    endif()
endif()

if(WITH_JPEG)
    find_package(JPEG)
    if(JPEG_FOUND)
        set(HAVE_LIBJPEG ON)
        message(STATUS "JPEG support: enabled")
    else()
        message(STATUS "JPEG support: disabled (library not found)")
    endif()
endif()

if(WITH_PNG)
    find_package(PNG)
    if(PNG_FOUND)
        set(HAVE_LIBPNG ON)
        message(STATUS "PNG support: enabled")
    else()
        message(STATUS "PNG support: disabled (library not found)")
    endif()
endif()

if(WITH_PNM)
    find_library(PNM_LIBRARY NAMES netpbm pnm)
    find_path(PNM_INCLUDE_DIR pnm.h)
    if(PNM_LIBRARY AND PNM_INCLUDE_DIR)
        set(HAVE_LIBPNM ON)
        message(STATUS "PNM support: enabled")
    else()
        message(STATUS "PNM support: disabled (library not found)")
    endif()
endif()

if(WITH_TIFF)
    find_package(TIFF)
    if(TIFF_FOUND)
        set(HAVE_LIBTIFF ON)
        message(STATUS "TIFF support: enabled")
    else()
        message(STATUS "TIFF support: disabled (library not found)")
    endif()
endif()

# iconv
find_package(Iconv)
if(Iconv_FOUND)
    set(HAVE_ICONV ON)
    if(Iconv_IS_BUILT_IN)
        set(ICONV_CONST "")
    else()
        set(ICONV_CONST "const")
    endif()
else()
    set(ICONV_CONST "")
endif()

# Check for functions
include(CheckFunctionExists)
check_function_exists(unsetenv HAVE_UNSETENV)
check_function_exists(timegm HAVE_TIMEGM)

# Check for headers
include(CheckIncludeFile)
check_include_file(langinfo.h HAVE_LANGINFO_H)

# Default map extension
set(MAPEXT "jpg" CACHE STRING "Default map extension")

# Set package variables for config.h
set(PACKAGE "xplanet")
set(PACKAGE_NAME "xplanet")
set(PACKAGE_VERSION "1.3.1")
set(VERSION "1.3.1")
set(PACKAGE_STRING "xplanet 1.3.1")
set(PACKAGE_TARNAME "xplanet")
set(PACKAGE_BUGREPORT "")
set(PACKAGE_URL "")

# Generate config.h
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/config.h.cmake
    ${CMAKE_CURRENT_BINARY_DIR}/config.h
)

# Generate xpDefines.h
configure_file(
    ${CMAKE_CURRENT_SOURCE_DIR}/xpDefines.h.in
    ${CMAKE_CURRENT_BINARY_DIR}/xpDefines.h
)

# Include directories
include_directories(
    ${CMAKE_CURRENT_SOURCE_DIR}/src
    ${CMAKE_CURRENT_BINARY_DIR}
)


# Add subdirectories
add_subdirectory(src)

# Install man page
install(FILES xplanet.1 DESTINATION ${CMAKE_INSTALL_PREFIX}/share/man/man1)

# Install data files
install(FILES xplanet/rgb.txt DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet)

install(FILES 
    xplanet/arcs/README
    xplanet/arcs/constellations
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/arcs
)

install(FILES
    xplanet/config/README
    xplanet/config/default
    xplanet/config/earth_markers
    xplanet/config/moon_orbit
    xplanet/config/overlay_clouds
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/config
)

install(FILES
    xplanet/ephemeris/README
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/ephemeris
)

install(FILES
    xplanet/fonts/README
    xplanet/fonts/FreeMonoBold.ttf
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/fonts
)

# Install all image files
file(GLOB IMAGE_FILES "xplanet/images/*")
install(FILES ${IMAGE_FILES}
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/images
)

install(FILES
    xplanet/markers/README
    xplanet/markers/brightStars
    xplanet/markers/earth
    xplanet/markers/mars
    xplanet/markers/moon
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/markers
)

install(FILES
    xplanet/origin/README
    xplanet/origin/cassini
    xplanet/origin/galileo
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/origin
)

install(FILES
    xplanet/satellites/README
    xplanet/satellites/iss
    xplanet/satellites/iss.tle
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/satellites
)

install(FILES
    xplanet/scattering/README
    xplanet/scattering/earthRayleigh
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/scattering
)

install(FILES
    xplanet/spice/README
    xplanet/spice/asteroids
    xplanet/spice/asteroids.krn
    xplanet/spice/cassini
    xplanet/spice/cassini.krn
    xplanet/spice/mgs
    xplanet/spice/mgs.krn
    xplanet/spice/voyager
    xplanet/spice/voyager.krn
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/spice
)

install(FILES
    xplanet/stars/BSC
    DESTINATION ${CMAKE_INSTALL_PREFIX}/share/xplanet/stars
)
