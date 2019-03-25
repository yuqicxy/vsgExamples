set(SOURCES vsgvalues.cpp)

add_executable(vsgvalues ${SOURCES})

TARGET_LINK_LIBRARIES(vsgvalues "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgvalues optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgvalues PROPERTY CXX_STANDARD 17)