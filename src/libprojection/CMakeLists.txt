# libprojection sources
set(LIBPROJECTION_SOURCES
    ProjectionAncient.cpp
    ProjectionAncient.h
    ProjectionAzimuthal.cpp
    ProjectionAzimuthal.h
    ProjectionAzimutEqualArea.cpp
    ProjectionAzimutEqualArea.h
    ProjectionBase.cpp
    ProjectionBase.h
    ProjectionBonne.h
    ProjectionBonne.cpp
    ProjectionGnomonic.cpp
    ProjectionGnomonic.h
    ProjectionHemisphere.cpp
    ProjectionHemisphere.h
    ProjectionIcosagnomonic.cpp
    ProjectionIcosagnomonic.h
    ProjectionLambert.cpp
    ProjectionLambert.h
    ProjectionMercator.cpp
    ProjectionMercator.h
    ProjectionMollweide.cpp
    ProjectionMollweide.h
    ProjectionOrthographic.cpp
    ProjectionOrthographic.h
    ProjectionPeters.cpp
    ProjectionPeters.h
    ProjectionPolyconic.cpp
    ProjectionPolyconic.h
    ProjectionRectangular.cpp
    ProjectionRectangular.h
    ProjectionTSC.cpp
    ProjectionTSC.h
    getProjection.cpp
    libprojection.h
)

# Create static library
add_library(projection STATIC ${LIBPROJECTION_SOURCES})

# Include directories
target_include_directories(projection PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)
