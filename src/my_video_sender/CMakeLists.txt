cmake_minimum_required(VERSION 3.5)
project(my_video_sender)

# 依存関係の指定
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)

include_directories(include)

# C++実行ファイルの作成
add_executable(image_receiver src/image_receiver.cpp)

# C言語のソースファイルも追加
add_library(image_processor src/image_processor.c)

# ライブラリのリンク
ament_target_dependencies(image_receiver
  rclcpp
  sensor_msgs
)

# C++ノードがC言語のライブラリをリンクする
target_link_libraries(image_receiver
  image_processor
)

# インストール
install(TARGETS
  image_receiver
  DESTINATION lib/${PROJECT_NAME}
)

install(TARGETS
  image_processor
  DESTINATION lib/${PROJECT_NAME}
)

ament_package()
