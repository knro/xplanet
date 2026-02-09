# libsgp4sdp4 sources
set(LIBSGP4SDP4_SOURCES
    sgp4sdp4.h
    sgp4sdp4.c
    sgp_in.c
    sgp_math.c
    sgp_obs.c
    sgp_time.c
    solar.c
)

# Create static library
add_library(sgp4sdp4 STATIC ${LIBSGP4SDP4_SOURCES})

# Include directories
target_include_directories(sgp4sdp4 PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)
