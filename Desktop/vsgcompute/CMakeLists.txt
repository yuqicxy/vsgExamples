set(SOURCES vsgcompute.cpp)

add_executable(vsgcompute ${SOURCES})

TARGET_LINK_LIBRARIES(vsgcompute "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgcompute optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgcompute PROPERTY CXX_STANDARD 17)