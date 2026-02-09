# libimage base sources
set(LIBIMAGE_SOURCES
    Image.cpp
    Image.h
    ReadImage.cpp
    WriteImage.cpp
    bmp.c
)

# Add image format sources based on available libraries
if(HAVE_LIBGIF)
    list(APPEND LIBIMAGE_SOURCES gif.c)
endif()

if(HAVE_LIBJPEG)
    list(APPEND LIBIMAGE_SOURCES jpeg.c)
endif()

if(HAVE_LIBPNG)
    list(APPEND LIBIMAGE_SOURCES png.c)
endif()

if(HAVE_LIBPNM)
    list(APPEND LIBIMAGE_SOURCES pnm.c)
endif()

if(HAVE_LIBTIFF)
    list(APPEND LIBIMAGE_SOURCES tiff.c)
endif()

# Create static library
add_library(image STATIC ${LIBIMAGE_SOURCES})

# Include directories
target_include_directories(image PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)
