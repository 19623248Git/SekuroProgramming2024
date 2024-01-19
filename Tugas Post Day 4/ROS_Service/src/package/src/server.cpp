#include <iostream>
#include <cmath>
#include "ros/ros.h"
#include "package/MagCalc.h"

bool calc(package::MagCalc::Request &req, package::MagCalc::Response &resp){
    //calculate magnitude
    resp.magnitude = std::sqrt(std::pow(req.komponenX,2) + std::pow(req.komponenY,2) + std::pow(req.komponenZ,2));

    //printout data
    // ROS_INFO("\nNilai Komponen X: %lf", (double)req.komponenX);
    // ROS_INFO("\nNilai Komponen Y: %lf", (double)req.komponenY);
    // ROS_INFO("\nNilai Komponen Z: %lf", (double)req.komponenZ);
    // ROS_INFO("\nNilai Magnitude : %lf", (double)resp.magnitude);
    return true;
}

int main(int argc, char**argv){
    //initialize node
    ros::init(argc,argv,"server");

    //initialize handler node
    ros::NodeHandle nh;

    //initialize server from handler
    ros::ServiceServer server = nh.advertiseService("calculate_magnitude",calc);
    ROS_INFO("Calculating Magnitude...");
    ros::spin();

    return 0;
}