# libdisplay base sources
set(LIBDISPLAY_SOURCES
    DisplayBase.cpp
    DisplayBase.h
    DisplayOutput.h
    DisplayOutput.cpp
    getDisplay.cpp
    libdisplay.h
    TextRenderer.cpp
    TextRenderer.h
    getTextRenderer.cpp
)

# Platform-specific sources
if(HAVE_LIBX11)
    list(APPEND LIBDISPLAY_SOURCES
        DisplayX11.cpp
        DisplayX11.h
        vroot.h
    )
endif()

if(APPLE)
    list(APPEND LIBDISPLAY_SOURCES
        DisplayMacAqua.cpp
        DisplayMacAqua.h
        DesktopPicture.m
    )
endif()

if(WIN32)
    list(APPEND LIBDISPLAY_SOURCES
        DisplayMSWin.cpp
        DisplayMSWin.h
    )
endif()

# Text renderer sources
if(HAVE_LIBFREETYPE)
    list(APPEND LIBDISPLAY_SOURCES
        TextRendererFT2.cpp
        TextRendererFT2.h
    )
endif()

if(HAVE_LIBPANGOFT2)
    list(APPEND LIBDISPLAY_SOURCES
        TextRendererPangoFT2.cpp
        TextRendererPangoFT2.h
    )
endif()

# libtimer sources
set(LIBTIMER_SOURCES
    getTimer.cpp
    libtimer.h
    Timer.h
    Timer.cpp
)

if(APPLE)
    list(APPEND LIBTIMER_SOURCES
        TimerMacAqua.cpp
        TimerMacAqua.h
    )
endif()

if(HAVE_LIBX11)
    list(APPEND LIBTIMER_SOURCES
        TimerX11.h
        TimerX11.cpp
    )
endif()

# Create static libraries
add_library(display STATIC ${LIBDISPLAY_SOURCES})
add_library(timer STATIC ${LIBTIMER_SOURCES})

# Include directories
target_include_directories(display PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)

target_include_directories(timer PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
    ${CMAKE_SOURCE_DIR}/src
)

# Add X11 include directories if available
if(HAVE_LIBX11)
    target_include_directories(display PRIVATE ${X11_INCLUDE_DIR})
    target_include_directories(timer PRIVATE ${X11_INCLUDE_DIR})
endif()

# Add Freetype include directories if available
if(HAVE_LIBFREETYPE)
    target_include_directories(display PRIVATE ${FREETYPE_INCLUDE_DIRS})
endif()

# Add Pango include directories if available
if(HAVE_LIBPANGOFT2)
    target_include_directories(display PRIVATE ${PANGOFT2_INCLUDE_DIRS})
endif()
