#include "ros/ros.h"
#include "package/VarMsg.h"

void callbackHandler(const package::VarMsg::ConstPtr &msg){
    //print out received messages
    ROS_INFO("\nmessage received:\n");
    ROS_INFO("first message (usia): %ld\n",msg->usia);
    ROS_INFO("second message (tinggi): %lf\n",msg ->tinggi);
    ROS_INFO("third message (nama): %s\n",msg ->nama.c_str());
    ROS_INFO("fourth message (kehadiran): %d\n",msg ->kehadiran);
}

int main (int argc, char ** argv){
    //initialize node
    ros::init (argc,argv,"subscriber_node");
    
    //initialize handler node
    ros::NodeHandle nh;

    //initialize subscriber from handler
    ros::Subscriber data_subscriber = nh.subscribe("topic",1000,callbackHandler);

    ros::spin();

    return 0;
}