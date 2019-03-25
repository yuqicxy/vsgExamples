set(SOURCES vsgmemory.cpp)

add_executable(vsgmemory ${SOURCES})

TARGET_LINK_LIBRARIES(vsgmemory "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgmemory optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgmemory PROPERTY CXX_STANDARD 17)