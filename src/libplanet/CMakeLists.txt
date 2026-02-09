# libplanet sources
set(LIBPLANET_SOURCES
    Planet.cpp
    Planet.h
)

# Create static library
add_library(planet STATIC ${LIBPLANET_SOURCES})

# Include directories
target_include_directories(planet PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)
