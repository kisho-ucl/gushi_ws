#include <rclcpp/rclcpp.hpp>
#include <sensor_msgs/msg/image.hpp>
#include <opencv2/opencv.hpp>
#include <cv_bridge/cv_bridge.h>

cv::Mat shared_image; // グローバル変数

class ImageReceiver : public rclcpp::Node
{
public:
    ImageReceiver()
        : Node("image_receiver_node")
    {
        // Subscriberを作成
        subscription_ = this->create_subscription<sensor_msgs::msg::Image>(
            "/camera/camera/color/image_raw",
            10,
            std::bind(&ImageReceiver::image_callback, this, std::placeholders::_1)
        );
    }

private:
    void image_callback(const sensor_msgs::msg::Image::SharedPtr msg)
    {
        // ROS ImageをOpenCV Matに変換
        cv_bridge::CvImagePtr cv_ptr;
        try
        {
            cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
            shared_image = cv_ptr->image.clone(); // 画像をグローバル変数に保存
        }
        catch (cv_bridge::Exception& e)
        {
            RCLCPP_ERROR(this->get_logger(), "cv_bridge exception: %s", e.what());
            return;
        }

        // 画像を表示
        cv::imshow("Received Image 2", shared_image);
        cv::waitKey(1);
    }

    rclcpp::Subscription<sensor_msgs::msg::Image>::SharedPtr subscription_;
};

int main(int argc, char** argv)
{
    rclcpp::init(argc, argv);
    rclcpp::spin(std::make_shared<ImageReceiver>());
    rclcpp::shutdown();
    return 0;
}