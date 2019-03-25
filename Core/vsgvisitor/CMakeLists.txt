set(SOURCES vsgvisitor.cpp)

add_executable(vsgvisitor ${SOURCES})


TARGET_LINK_LIBRARIES(vsgvisitor "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgvisitor optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgvisitor PROPERTY CXX_STANDARD 17)