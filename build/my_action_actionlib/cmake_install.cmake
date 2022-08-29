# Install script for directory: /home/airpocart/airpocart_ws/src/my_action_actionlib

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/airpocart/airpocart_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_action_actionlib/msg" TYPE FILE FILES
    "/home/airpocart/airpocart_ws/src/my_action_actionlib/msg/actionCmd.msg"
    "/home/airpocart/airpocart_ws/src/my_action_actionlib/msg/feedbackMsg.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_action_actionlib/action" TYPE FILE FILES "/home/airpocart/airpocart_ws/src/my_action_actionlib/action/MyAction.action")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_action_actionlib/msg" TYPE FILE FILES
    "/home/airpocart/airpocart_ws/devel/share/my_action_actionlib/msg/MyActionAction.msg"
    "/home/airpocart/airpocart_ws/devel/share/my_action_actionlib/msg/MyActionActionGoal.msg"
    "/home/airpocart/airpocart_ws/devel/share/my_action_actionlib/msg/MyActionActionResult.msg"
    "/home/airpocart/airpocart_ws/devel/share/my_action_actionlib/msg/MyActionActionFeedback.msg"
    "/home/airpocart/airpocart_ws/devel/share/my_action_actionlib/msg/MyActionGoal.msg"
    "/home/airpocart/airpocart_ws/devel/share/my_action_actionlib/msg/MyActionResult.msg"
    "/home/airpocart/airpocart_ws/devel/share/my_action_actionlib/msg/MyActionFeedback.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_action_actionlib/cmake" TYPE FILE FILES "/home/airpocart/airpocart_ws/build/my_action_actionlib/catkin_generated/installspace/my_action_actionlib-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/airpocart/airpocart_ws/devel/include/my_action_actionlib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/airpocart/airpocart_ws/devel/share/roseus/ros/my_action_actionlib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/airpocart/airpocart_ws/devel/share/common-lisp/ros/my_action_actionlib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/airpocart/airpocart_ws/devel/share/gennodejs/ros/my_action_actionlib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/airpocart/airpocart_ws/devel/lib/python2.7/dist-packages/my_action_actionlib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/airpocart/airpocart_ws/devel/lib/python2.7/dist-packages/my_action_actionlib")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/my_action_actionlib" TYPE FILE FILES "/home/airpocart/airpocart_ws/devel/include/my_action_actionlib/my_action_dynamicConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/my_action_actionlib" TYPE FILE FILES "/home/airpocart/airpocart_ws/devel/lib/python2.7/dist-packages/my_action_actionlib/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/airpocart/airpocart_ws/devel/lib/python2.7/dist-packages/my_action_actionlib/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/my_action_actionlib" TYPE DIRECTORY FILES "/home/airpocart/airpocart_ws/devel/lib/python2.7/dist-packages/my_action_actionlib/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/airpocart/airpocart_ws/build/my_action_actionlib/catkin_generated/installspace/my_action_actionlib.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_action_actionlib/cmake" TYPE FILE FILES "/home/airpocart/airpocart_ws/build/my_action_actionlib/catkin_generated/installspace/my_action_actionlib-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_action_actionlib/cmake" TYPE FILE FILES
    "/home/airpocart/airpocart_ws/build/my_action_actionlib/catkin_generated/installspace/my_action_actionlibConfig.cmake"
    "/home/airpocart/airpocart_ws/build/my_action_actionlib/catkin_generated/installspace/my_action_actionlibConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/my_action_actionlib" TYPE FILE FILES "/home/airpocart/airpocart_ws/src/my_action_actionlib/package.xml")
endif()

