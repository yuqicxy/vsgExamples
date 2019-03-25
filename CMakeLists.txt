cmake_minimum_required(VERSION 3.7)

project(vsgExamples
        VERSION 0.0.0
        DESCRIPTION "Set of example programs that test and illustrate how to use the Vulkan/VkSceneGraph"
        LANGUAGES CXX C
)

# build all examples into the bin directory
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)

# Change the default build type to Release
if(NOT CMAKE_BUILD_TYPE)
    set(CMAKE_BUILD_TYPE Release CACHE STRING "Choose the type of build, options are: None Debug Release RelWithDebInfo MinSizeRel." FORCE)
endif(NOT CMAKE_BUILD_TYPE)

SET(CMAKE_MODULE_PATH "${vsgExamples_SOURCE_DIR}/CMakeModules;${CMAKE_MODULE_PATH}")

message(STATUS "${CMAKE_MODULE_PATH}")

# find the vsg
find_package(VSG REQUIRED)
find_package(Vulkan)

message(STATUS "${VSG_INCLUDE_DIR}")
message(STATUS "${VSG_Debug_LIBRARY}")
message(STATUS "${VSG_MinSizeRel_LIBRARY}")
message(STATUS "${VSG_Release_LIBRARY}")
message(STATUS "${VSG_Release_DebugInfo_LIBRARY}")

SET(CMAKE_DEBUG_POSTFIX  "d" CACHE STRING "add a postfix, usually d on windows")
SET(CMAKE_RELEASE_POSTFIX "" CACHE STRING "add a postfix, usually empty on windows")
SET(CMAKE_RELWITHDEBINFO_POSTFIX "rd" CACHE STRING "add a postfix, usually empty on windows")
SET(CMAKE_MINSIZEREL_POSTFIX "s" CACHE STRING "add a postfix, usually empty on windows")

set(LIBRARIES Vulkan::Vulkan)

INCLUDE_DIRECTORIES(${VSG_INCLUDE_DIR} ${Vulkan_INCLUDE_DIR})

# set the use of C++17 globally as all examples require it
set(CMAKE_CXX_STANDARD 17)

# add clobber build target to clear all the non git registered files/directories
add_custom_target(clobber
    COMMAND git clean -d -f -x
)

# pure VSG examples
add_subdirectory(Core)

if (ANDROID)
    add_subdirectory(Android)
else()
    add_subdirectory(Desktop)
endif()

