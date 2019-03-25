set(SOURCES vsgc_interface.c)

add_executable(vsgc_interface ${SOURCES})

TARGET_LINK_LIBRARIES(vsgc_interface "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgc_interface optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")

set_property(TARGET vsgc_interface PROPERTY CXX_STANDARD 17)