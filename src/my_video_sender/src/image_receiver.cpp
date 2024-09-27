#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>

// C言語側で画像データを受け取る関数の宣言
extern "C" {
    void pass_image_to_c_function(const unsigned char* image_data, int width, int height, int step);
}

class ImageReceiver : public rclcpp::Node {
public:
    ImageReceiver() : Node("image_receiver") {
        // 画像トピックをサブスクライブ
        subscription_ = this->create_subscription<sensor_msgs::msg::Image>(
            "/camera/camera/color/image_raw", 10, std::bind(&ImageReceiver::image_callback, this, std::placeholders::_1));
    }

private:
    // 画像受信コールバック
    void image_callback(const sensor_msgs::msg::Image::SharedPtr msg) {
        // 受信した画像データをC関数に渡す
        pass_image_to_c_function(msg->data.data(), msg->width, msg->height, msg->step);
    }

    rclcpp::Subscription<sensor_msgs::msg::Image>::SharedPtr subscription_;
};

int main(int argc, char * argv[]) {
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<ImageReceiver>());
    rclcpp::shutdown();
    return 0;
}


