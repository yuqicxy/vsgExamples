set(SOURCES vsgarrays.cpp)

add_executable(vsgarrays ${SOURCES})

TARGET_LINK_LIBRARIES(vsgarrays "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgarrays optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")

set_property(TARGET vsgarrays PROPERTY CXX_STANDARD 17)