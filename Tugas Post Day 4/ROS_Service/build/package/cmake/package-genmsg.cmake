# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "package: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(package_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv" NAME_WE)
add_custom_target(_package_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "package" "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(package
  "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package
)

### Generating Module File
_generate_module_cpp(package
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(package_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(package_generate_messages package_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv" NAME_WE)
add_dependencies(package_generate_messages_cpp _package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_gencpp)
add_dependencies(package_gencpp package_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(package
  "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package
)

### Generating Module File
_generate_module_eus(package
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(package_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(package_generate_messages package_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv" NAME_WE)
add_dependencies(package_generate_messages_eus _package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_geneus)
add_dependencies(package_geneus package_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(package
  "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package
)

### Generating Module File
_generate_module_lisp(package
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(package_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(package_generate_messages package_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv" NAME_WE)
add_dependencies(package_generate_messages_lisp _package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_genlisp)
add_dependencies(package_genlisp package_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(package
  "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package
)

### Generating Module File
_generate_module_nodejs(package
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(package_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(package_generate_messages package_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv" NAME_WE)
add_dependencies(package_generate_messages_nodejs _package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_gennodejs)
add_dependencies(package_gennodejs package_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(package
  "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package
)

### Generating Module File
_generate_module_py(package
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(package_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(package_generate_messages package_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/root/TPOST4/ROS_Service/src/package/srv/MagCalc.srv" NAME_WE)
add_dependencies(package_generate_messages_py _package_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(package_genpy)
add_dependencies(package_genpy package_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS package_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/package
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(package_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/package
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(package_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/package
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(package_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/package
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(package_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/package
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(package_generate_messages_py std_msgs_generate_messages_py)
endif()
