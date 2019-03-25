set(HEADERS SharedPtrNode.h)
set(SOURCES SharedPtrNode.cpp vsggroups.cpp)

add_executable(vsggroups ${HEADERS} ${SOURCES})
TARGET_LINK_LIBRARIES(vsggroups "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsggroups optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsggroups PROPERTY CXX_STANDARD 17)
