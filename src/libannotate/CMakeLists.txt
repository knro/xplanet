# libannotate sources
set(LIBANNOTATE_SOURCES
    Annotation.h
    Annotation.cpp
    addArcs.cpp
    addMarkers.cpp
    addSatellites.cpp
    arrangeMarkers.cpp
    drawArc.h
    drawArc.cpp
    drawCircle.h
    drawCircle.cpp
    Icon.h
    Icon.cpp
    LineSegment.h
    LineSegment.cpp
    Symbol.h
    Symbol.cpp
    Text.h
    Text.cpp
    libannotate.h
)

# Add CSPICE-dependent sources
if(HAVE_CSPICE)
    list(APPEND LIBANNOTATE_SOURCES addSpiceObjects.cpp)
endif()

# Create static library
add_library(annotate STATIC ${LIBANNOTATE_SOURCES})

# Include directories
target_include_directories(annotate PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)

# Add Freetype include directories if available
if(HAVE_LIBFREETYPE)
    target_include_directories(annotate PRIVATE ${FREETYPE_INCLUDE_DIRS})
endif()
