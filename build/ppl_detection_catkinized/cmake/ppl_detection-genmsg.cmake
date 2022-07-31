# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ppl_detection: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ippl_detection:/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/melodic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ppl_detection_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg" NAME_WE)
add_custom_target(_ppl_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ppl_detection" "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg" ""
)

get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg" NAME_WE)
add_custom_target(_ppl_detection_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ppl_detection" "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg" "ppl_detection/Human:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ppl_detection
)
_generate_msg_cpp(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg"
  "${MSG_I_FLAGS}"
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ppl_detection
)

### Generating Services

### Generating Module File
_generate_module_cpp(ppl_detection
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ppl_detection
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ppl_detection_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ppl_detection_generate_messages ppl_detection_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_cpp _ppl_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_cpp _ppl_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ppl_detection_gencpp)
add_dependencies(ppl_detection_gencpp ppl_detection_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ppl_detection_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ppl_detection
)
_generate_msg_eus(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg"
  "${MSG_I_FLAGS}"
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ppl_detection
)

### Generating Services

### Generating Module File
_generate_module_eus(ppl_detection
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ppl_detection
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ppl_detection_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ppl_detection_generate_messages ppl_detection_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_eus _ppl_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_eus _ppl_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ppl_detection_geneus)
add_dependencies(ppl_detection_geneus ppl_detection_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ppl_detection_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ppl_detection
)
_generate_msg_lisp(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg"
  "${MSG_I_FLAGS}"
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ppl_detection
)

### Generating Services

### Generating Module File
_generate_module_lisp(ppl_detection
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ppl_detection
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ppl_detection_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ppl_detection_generate_messages ppl_detection_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_lisp _ppl_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_lisp _ppl_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ppl_detection_genlisp)
add_dependencies(ppl_detection_genlisp ppl_detection_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ppl_detection_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ppl_detection
)
_generate_msg_nodejs(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg"
  "${MSG_I_FLAGS}"
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ppl_detection
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ppl_detection
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ppl_detection
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ppl_detection_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ppl_detection_generate_messages ppl_detection_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_nodejs _ppl_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_nodejs _ppl_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ppl_detection_gennodejs)
add_dependencies(ppl_detection_gennodejs ppl_detection_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ppl_detection_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ppl_detection
)
_generate_msg_py(ppl_detection
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg"
  "${MSG_I_FLAGS}"
  "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ppl_detection
)

### Generating Services

### Generating Module File
_generate_module_py(ppl_detection
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ppl_detection
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ppl_detection_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ppl_detection_generate_messages ppl_detection_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Human.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_py _ppl_detection_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/airpocart/catkin_ws/src/ppl_detection_catkinized/msg/Tracker.msg" NAME_WE)
add_dependencies(ppl_detection_generate_messages_py _ppl_detection_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ppl_detection_genpy)
add_dependencies(ppl_detection_genpy ppl_detection_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ppl_detection_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ppl_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ppl_detection
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ppl_detection_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(ppl_detection_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(ppl_detection_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ppl_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ppl_detection
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ppl_detection_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(ppl_detection_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(ppl_detection_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ppl_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ppl_detection
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ppl_detection_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(ppl_detection_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(ppl_detection_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ppl_detection)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ppl_detection
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ppl_detection_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(ppl_detection_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(ppl_detection_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ppl_detection)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ppl_detection\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ppl_detection
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ppl_detection_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(ppl_detection_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(ppl_detection_generate_messages_py visualization_msgs_generate_messages_py)
endif()
