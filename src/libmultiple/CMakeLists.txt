# libmultiple sources
set(LIBMULTIPLE_SOURCES
    libmultiple.h
    addOrbits.cpp
    RayleighScattering.h
    RayleighScattering.cpp
    drawSphere.cpp
    drawEllipsoid.cpp
    drawRings.cpp
    drawStars.cpp
    drawSunGlare.cpp
)

# Create static library
add_library(multiple STATIC ${LIBMULTIPLE_SOURCES})

# Include directories
target_include_directories(multiple PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)

# Add Freetype include directories if available
if(HAVE_LIBFREETYPE)
    target_include_directories(multiple PRIVATE ${FREETYPE_INCLUDE_DIRS})
endif()
