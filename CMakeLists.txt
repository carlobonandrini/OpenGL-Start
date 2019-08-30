cmake_minimum_required(VERSION 2.8)
project(OpenGLStart)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_BUILD_TYPE Debug)
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -framework Cocoa -framework OpenGL -framework IOKit -framework CoreVideo")

file(GLOB SOURCES "src/*.cpp")
add_executable(OpenGLStart ${SOURCES})

set(GLEW_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dependencies/glew-2.1.0/include)
set(GLEW_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/dependencies/glew-2.1.0/lib/libGLEW.a)

set(GLFW_INCLUDE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/dependencies/glfw-3.3/include)
set(GLFW_LIBRARY ${CMAKE_CURRENT_SOURCE_DIR}/dependencies/glfw-3.3/build/src/libglfw3.a)

include_directories(${GLEW_INCLUDE_DIR} ${GLFW_INCLUDE_DIR} ${COCOA_INCLUDE_DIR})
target_link_libraries(OpenGLStart ${GLEW_LIBRARY} ${GLFW_LIBRARY})

