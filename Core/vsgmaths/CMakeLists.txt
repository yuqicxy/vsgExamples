set(SOURCES vsgmaths.cpp)

add_executable(vsgmaths ${SOURCES})

TARGET_LINK_LIBRARIES(vsgmaths "${LIBRARIES}")
TARGET_LINK_LIBRARIES(vsgmaths optimized "${VSG_LIBRARY}" debug "${VSG_LIBRARY_DEBUG}")
set_property(TARGET vsgmaths PROPERTY CXX_STANDARD 17)