cmake_minimum_required(VERSION 3.0)
project(practice1)

set(CMAKE_CXX_STANDARD 20)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake/modules")

cmake_policy(SET CMP0072 NEW)

find_package(OpenGL REQUIRED)
find_package(GLEW REQUIRED)
find_package(SDL2 REQUIRED)

set(TARGET_NAME "${PROJECT_NAME}")

add_executable(${TARGET_NAME} main.cpp)
target_include_directories(${TARGET_NAME} PUBLIC
	"${SDL2_INCLUDE_DIRS}"
	"${GLEW_INCLUDE_DIRS}"
	"${OPENGL_INCLUDE_DIRS}"
)
target_link_libraries(${TARGET_NAME} PUBLIC
	"${GLEW_LIBRARIES}"
	"${SDL2_LIBRARIES}"
	"${OPENGL_LIBRARIES}"
)
