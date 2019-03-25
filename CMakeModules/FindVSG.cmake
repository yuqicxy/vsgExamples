# This module defines

# VSG_LIBRARY
# VSG_FOUND, if false, do not try to link to vsg
# VSG_INCLUDE_DIR, where to find the source headers

# to use this module, set variables to point to the vsg build
# directory, and source directory, respectively
# VSGDIR or VSG_SOURCE_DIR: vsg source directory, typically VulkanSceneGraph
# VSG_DIR or VSG_BUILD_DIR: vsg build directory, place in which you've
#    built VSG via cmake 

# Header files are presumed to be included like
# include <vsg/nodes/Group.h>

###### headers ######

SET(VSG_DIR "" CACHE PATH "Set to base VulkanSceneGraph install path")

FIND_PATH(VSG_INCLUDE_DIR vsg/core
    PATHS
        ${VSG_DIR}
        $ENV{VSG_SOURCE_DIR}
        $ENV{VSGDIR}
        $ENV{VSG_DIR}
        $ENV{VSG}
        $ENV{VSG}
        /usr/local/
        /usr/
        /sw/ # Fink
        /opt/local/ # DarwinPorts
        /opt/csw/ # Blastwave
        /opt/
        [HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Session\ Manager\\Environment;VSG_ROOT]/
        ~/Library/Frameworks
        /Library/Frameworks
    PATH_SUFFIXES
        /include
)


###### library ######

MACRO( FIND_VSG_LIBRARY MYLIBRARY MYLIBRARYNAME )
FIND_LIBRARY(${MYLIBRARY}
    NAMES
        ${MYLIBRARYNAME}
    PATHS
        ${VSG_DIR}
        ${VSG_DIR}/lib
        $ENV{VSG_BUILD_DIR}
        $ENV{VSG_DIR}
        $ENV{VSGDIR}
        $ENV{VSG_ROOT}
        $ENV{VSG}
        ~/Library/Frameworks
        /Library/Frameworks
        /usr/local
        /usr
        /sw
        /opt/local
        /opt/csw
        /opt
        [HKEY_LOCAL_MACHINE\\SYSTEM\\CurrentControlSet\\Control\\Session\ Manager\\Environment;OSG_ROOT]/lib
        /usr/freeware
    PATH_SUFFIXES
        /lib/
        /lib64/
        /build/lib/
        /build/lib64/
        /Build/lib/
        /Build/lib64/
)
ENDMACRO(FIND_VSG_LIBRARY LIBRARY LIBRARYNAME)

FIND_LIBRARY( VSG_LIBRARY_DEBUG vsgd.lib)
FIND_LIBRARY( VSG_LIBRARY vsg)