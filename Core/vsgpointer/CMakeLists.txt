set(SOURCES vsgpointer.cpp)

add_executable(vsgpointer ${SOURCES})

TARGET_LINK_LIBRARIES(vsgpointer "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgpointer optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgpointer PROPERTY CXX_STANDARD 17)