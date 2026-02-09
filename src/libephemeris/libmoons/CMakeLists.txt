# libmoons sources
set(LIBMOONS_SOURCES
    elp82b.h
    earth.cpp
    mars.cpp
    jupiter.cpp
    libmoons.h
    tass17.h
    saturn.cpp
    uranus.cpp
    neptune.cpp
    pluto.cpp
)

# Create static library
add_library(moons STATIC ${LIBMOONS_SOURCES})

# Include directories
target_include_directories(moons PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)
