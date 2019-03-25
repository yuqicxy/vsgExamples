set(SOURCES vsgallocator.cpp)

add_executable(vsgallocator ${SOURCES})


TARGET_LINK_LIBRARIES(vsgallocator "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgallocator optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")

set_property(TARGET vsgallocator PROPERTY CXX_STANDARD 17)
