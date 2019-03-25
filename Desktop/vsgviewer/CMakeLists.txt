set(SOURCES
    AnimationPath.cpp
    vsgviewer.cpp
)

add_executable(vsgviewer ${SOURCES})

TARGET_LINK_LIBRARIES(vsgviewer "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgviewer optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgviewer PROPERTY CXX_STANDARD 17)
