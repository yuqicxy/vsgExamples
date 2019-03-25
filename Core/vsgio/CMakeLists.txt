set(SOURCES vsgio.cpp)

add_executable(vsgio ${SOURCES})

TARGET_LINK_LIBRARIES(vsgio "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgio optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")

set_property(TARGET vsgc_interface PROPERTY CXX_STANDARD 17)