# Add subdirectories for all libraries
add_subdirectory(libannotate)
add_subdirectory(libdisplay)
add_subdirectory(libephemeris)
add_subdirectory(libimage)
add_subdirectory(libmultiple)
add_subdirectory(libplanet)
add_subdirectory(libprojection)
add_subdirectory(libsgp4sdp4)

# Main xplanet executable sources
set(XPLANET_SOURCES
    Map.cpp
    Map.h
    Options.cpp
    Options.h
    PlanetProperties.h
    PlanetProperties.cpp
    Ring.cpp
    Ring.h
    Satellite.h
    Satellite.cpp
    Separation.h
    Separation.cpp
    View.cpp
    View.h
    body.h
    buildPlanetMap.h
    buildPlanetMap.cpp
    createMap.h
    createMap.cpp
    drawMultipleBodies.cpp
    drawProjection.cpp
    findBodyXYZ.h
    findBodyXYZ.cpp
    findFile.h
    findFile.cpp
    getopt.c
    getopt.h
    getopt1.c
    keywords.h
    parse.h
    parse.cpp
    parseColor.h
    parseColor.cpp
    printVersion.cpp
    readConfig.cpp
    readOriginFile.h
    readOriginFile.cpp
    satrings.h
    ssec.cpp
    setPositions.h
    setPositions.cpp
    sphericalToPixel.h
    sphericalToPixel.cpp
    xpGetopt.h
    xpUtil.cpp
    xpUtil.h
    xplanet.cpp
)

# Add ParseGeom.c if not building with X11
if(NOT HAVE_LIBX11)
    list(APPEND XPLANET_SOURCES ParseGeom.c ParseGeom.h)
endif()

# Create the executable
add_executable(xplanet ${XPLANET_SOURCES})

# Set compile definitions
target_compile_definitions(xplanet PRIVATE
    DATADIR="${CMAKE_INSTALL_PREFIX}/share/xplanet"
)

# Include directories
target_include_directories(xplanet PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_CURRENT_BINARY_DIR}
)

# Link libraries
target_link_libraries(xplanet PRIVATE
    annotate
    display
    timer
    ephemeris
    moons
    image
    multiple
    planet
    projection
    sgp4sdp4
)

# Add X11 libraries
if(HAVE_LIBX11)
    target_link_libraries(xplanet PRIVATE ${X11_LIBRARIES})
    target_include_directories(xplanet PRIVATE ${X11_INCLUDE_DIR})
    
    if(HAVE_XSS)
        target_link_libraries(xplanet PRIVATE ${X11_Xscreensaver_LIB})
    endif()
endif()

# Add Freetype libraries
if(HAVE_LIBFREETYPE)
    target_link_libraries(xplanet PRIVATE Freetype::Freetype)
    target_include_directories(xplanet PRIVATE ${FREETYPE_INCLUDE_DIRS})
endif()

# Add Pango libraries
if(HAVE_LIBPANGOFT2)
    target_link_libraries(xplanet PRIVATE ${PANGOFT2_LIBRARIES})
    target_include_directories(xplanet PRIVATE ${PANGOFT2_INCLUDE_DIRS})
endif()

# Add CSPICE libraries
if(HAVE_CSPICE)
    target_link_libraries(xplanet PRIVATE ${CSPICE_LIBRARY})
    target_include_directories(xplanet PRIVATE ${CSPICE_INCLUDE_DIR})
endif()

# Add image libraries
if(HAVE_LIBGIF)
    target_link_libraries(xplanet PRIVATE ${GIF_LIBRARIES})
endif()

if(HAVE_LIBJPEG)
    target_link_libraries(xplanet PRIVATE ${JPEG_LIBRARIES})
endif()

if(HAVE_LIBPNG)
    target_link_libraries(xplanet PRIVATE PNG::PNG)
endif()

if(HAVE_LIBPNM)
    target_link_libraries(xplanet PRIVATE ${PNM_LIBRARY})
    target_include_directories(xplanet PRIVATE ${PNM_INCLUDE_DIR})
endif()

if(HAVE_LIBTIFF)
    target_link_libraries(xplanet PRIVATE ${TIFF_LIBRARIES})
endif()

# Add iconv if found
if(Iconv_FOUND AND NOT Iconv_IS_BUILT_IN)
    target_link_libraries(xplanet PRIVATE Iconv::Iconv)
endif()

# Add math library
target_link_libraries(xplanet PRIVATE m)

# Install the executable
install(TARGETS xplanet DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
