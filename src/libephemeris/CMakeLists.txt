# Add libmoons subdirectory
add_subdirectory(libmoons)

# libephemeris sources
set(LIBEPHEMERIS_SOURCES
    Ephemeris.cpp
    Ephemeris.h
    EphemerisHigh.cpp
    EphemerisHigh.h
    EphemerisLow.cpp
    EphemerisLow.h
    ephemerisWrapper.h
    ephemerisWrapper.cpp
    jpl_int.h
    jpleph.cpp
    jpleph.h
    pluto.cpp
)

# Add CSPICE-dependent sources
if(HAVE_CSPICE)
    list(APPEND LIBEPHEMERIS_SOURCES
        EphemerisSpice.cpp
        EphemerisSpice.h
    )
endif()

# Create static library
add_library(ephemeris STATIC ${LIBEPHEMERIS_SOURCES})

# Include directories
target_include_directories(ephemeris PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)
