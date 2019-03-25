set(SOURCES vsgdraw.cpp)

add_executable(vsgdraw ${SOURCES})

TARGET_LINK_LIBRARIES(vsgdraw "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgdraw optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgdraw PROPERTY CXX_STANDARD 17)