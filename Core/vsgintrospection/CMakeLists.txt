set(SOURCES vsgintrospection.cpp)

add_executable(vsgintrospection ${SOURCES})

TARGET_LINK_LIBRARIES(vsgintrospection "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgintrospection optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgc_interface PROPERTY CXX_STANDARD 17)