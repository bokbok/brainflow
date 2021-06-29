SET (WAVELIB "WaveLib")
aux_source_directory (${CMAKE_HOME_DIRECTORY}/third_party/wavelib/src WAVELIB_SRC)
add_library (${WAVELIB} STATIC ${WAVELIB_SRC})
target_include_directories (${WAVELIB} PUBLIC $<BUILD_INTERFACE:${CMAKE_HOME_DIRECTORY}/third_party/wavelib/header>)
set_property (TARGET ${WAVELIB} PROPERTY POSITION_INDEPENDENT_CODE ON)