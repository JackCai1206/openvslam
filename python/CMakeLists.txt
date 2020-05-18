find_package(PythonLibs 3 REQUIRED)
MESSAGE( " *** PYTHON_INCLUDE_DIRS : " ${PYTHON_INCLUDE_DIRS} )
MESSAGE( " *** PYTHON_LIBRARIES : " ${PYTHON_LIBRARIES} )

include_directories(${PYTHON_INCLUDE_DIRS})

SET(SOURCES
  ${CMAKE_CURRENT_SOURCE_DIR}/bindings.cc
  ${CMAKE_CURRENT_SOURCE_DIR}/ndarray_converter.cpp
)

# PyBind
add_subdirectory(pybind11)
pybind11_add_module(${PROJECT_NAME}_python ${SOURCES})

# Link OpenVSLAM_python
target_link_libraries(${PROJECT_NAME}_python
						PRIVATE
						${PROJECT_NAME}
						${PYTHON_LIBRARIES}
						opencv_imgcodecs
						opencv_videoio)
