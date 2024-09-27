cmake_minimum_required(VERSION 3.8)
project(test_package)
enable_language(C)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

#add_library(mylib src/mylib.c)
# インクルードディレクトリを指定
#target_include_directories(mylib PRIVATE
#    $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>  # ビルド時
#    $<INSTALL_INTERFACE:include>  # インストール時
#)
# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(OpenCV REQUIRED)
find_package(cv_bridge REQUIRED)

# add executable
add_executable(receiver src/receiver.cpp)
ament_target_dependencies(receiver rclcpp std_msgs sensor_msgs cv_bridge OpenCV)

# link OpenCV libraries
target_link_libraries(receiver ${OpenCV_LIBRARIES})

# install executable
install(TARGETS
  receiver
  DESTINATION lib/${PROJECT_NAME})

ament_package()
