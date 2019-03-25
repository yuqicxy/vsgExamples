set(SOURCES vsgtypes.cpp)

add_executable(vsgtypes ${SOURCES})


TARGET_LINK_LIBRARIES(vsgtypes "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgtypes optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")

set_property(TARGET vsgtypes PROPERTY CXX_STANDARD 17)