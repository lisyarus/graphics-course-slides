if(NOT SDL2_FOUND)
	if(CMAKE_SIZEOF_VOID_P EQUAL 8)
		set(_SDL2_LIB_SUFFIX x64)
	else()
		set(_SDL2_LIB_SUFFIX x86)
	endif()

	find_path(SDL2_INCLUDE_DIRS NAMES "SDL2/SDL.h" PATHS "${SDL2_ROOT}/include")
	find_library(SDL2_LIBRARIES NAMES "SDL2" PATHS "${SDL2_ROOT}/lib/${_SDL2_LIB_SUFFIX}")

	include(FindPackageHandleStandardArgs)
	find_package_handle_standard_args(SDL2 DEFAULT_MSG SDL2_INCLUDE_DIRS SDL2_LIBRARIES)

	mark_as_advanced(SDL2_INCLUDE_DIRS SDL2_LIBRARIES)
endif()
