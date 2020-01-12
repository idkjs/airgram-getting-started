# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget Td::tdutils Td::tdactor Td::tdnet Td::tdsqlite Td::tddb Td::tdjson Td::TdJson Td::tdjson_static Td::TdJsonStatic Td::tdjson_private Td::tdclient Td::tdcore Td::TdStatic)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target Td::tdutils
add_library(Td::tdutils STATIC IMPORTED)

set_target_properties(Td::tdutils PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "/usr/local/opt/openssl/lib/libcrypto.dylib;/usr/lib/libz.dylib;/usr/lib/libz.dylib"
)

# Create imported target Td::tdactor
add_library(Td::tdactor STATIC IMPORTED)

set_target_properties(Td::tdactor PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdutils"
)

# Create imported target Td::tdnet
add_library(Td::tdnet STATIC IMPORTED)

set_target_properties(Td::tdnet PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdutils;Td::tdactor;/usr/lib/libz.dylib;/usr/local/opt/openssl/lib/libssl.dylib;/usr/local/opt/openssl/lib/libcrypto.dylib"
)

# Create imported target Td::tdsqlite
add_library(Td::tdsqlite STATIC IMPORTED)

set_target_properties(Td::tdsqlite PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "/usr/local/opt/openssl/lib/libcrypto.dylib;/usr/lib/libz.dylib"
)

# Create imported target Td::tddb
add_library(Td::tddb STATIC IMPORTED)

set_target_properties(Td::tddb PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdactor;Td::tdutils;\$<LINK_ONLY:Td::tdsqlite>"
)

# Create imported target Td::tdjson
add_library(Td::tdjson SHARED IMPORTED)

set_target_properties(Td::tdjson PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
)

# Create imported target Td::TdJson
add_library(Td::TdJson INTERFACE IMPORTED)

set_target_properties(Td::TdJson PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdjson"
)

# Create imported target Td::tdjson_static
add_library(Td::tdjson_static STATIC IMPORTED)

set_target_properties(Td::tdjson_static PROPERTIES
  INTERFACE_COMPILE_DEFINITIONS "TDJSON_STATIC_DEFINE"
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:Td::tdjson_private>"
)

# Create imported target Td::TdJsonStatic
add_library(Td::TdJsonStatic INTERFACE IMPORTED)

set_target_properties(Td::TdJsonStatic PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdjson_static"
)

# Create imported target Td::tdjson_private
add_library(Td::tdjson_private STATIC IMPORTED)

set_target_properties(Td::tdjson_private PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdclient;Td::tdutils"
)

# Create imported target Td::tdclient
add_library(Td::tdclient STATIC IMPORTED)

set_target_properties(Td::tdclient PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:Td::tdcore>"
)

# Create imported target Td::tdcore
add_library(Td::tdcore STATIC IMPORTED)

set_target_properties(Td::tdcore PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdactor;Td::tdutils;Td::tdnet;Td::tddb;/usr/local/opt/openssl/lib/libcrypto.dylib;/usr/lib/libz.dylib"
)

# Create imported target Td::TdStatic
add_library(Td::TdStatic INTERFACE IMPORTED)

set_target_properties(Td::TdStatic PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "Td::tdclient"
)

if(CMAKE_VERSION VERSION_LESS 3.0.0)
  message(FATAL_ERROR "This file relies on consumers using CMake 3.0.0 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/TdTargets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)