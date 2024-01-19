#include <iostream>
#include <cmath>
#include "ros/ros.h"
#include "package/MagCalc.h"


int main (int argc, char**argv){
    //initialize node
    ros::init(argc,argv,"client");

    //initialize handler node
    ros::NodeHandle nh;

    //initialize client from handler
    ros::ServiceClient client = nh.serviceClient<package::MagCalc>("calculate_magnitude");

    //rate of sending : 1Hz
    ros::Rate loop_rate(1);

    while (ros::ok()){
    //initialize service request object
    package::MagCalc data;

    std::cout << "Input Komponen X: ";
    std::cin >> data.request.komponenX;

    std::cout << "Input Komponen Y: ";
    std::cin >> data.request.komponenY;

    std::cout << "Input Komponen Z: ";
    std::cin >> data.request.komponenZ;

        if (client.call(data)) {
            // Display the result
            ROS_INFO("magnitude: %lf", (double)data.response.magnitude);
        }   
        else {
            ROS_INFO("Service Not Found");
        }
    }
    

    return 0;
}