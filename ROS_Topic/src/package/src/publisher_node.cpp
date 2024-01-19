#include "ros/ros.h"
#include "package/VarMsg.h"

int main(int argc, char**argv){
    //initialize node
    ros::init(argc,argv,"publisher_node");

    //initialize handler node
    ros::NodeHandle nh;

    //initialize publisher from handler
    ros::Publisher data_publisher = nh.advertise<package::VarMsg>("topic",1000);

    //rate of sending : 1Hz
    ros::Rate loop_rate(1);

    //rose::ok() says true if file is running, false if files or its resources are turned off
    while (ros::ok()){

        //variable with defined msg type
        package::VarMsg a;
        a.usia = 18;
        a.tinggi = 1.7;
        a.nama = "Jovi";
        a.kehadiran = true;

        //printout variabel to console simple_publisher_node.cpp
        ROS_INFO("\nusia: %ld\ntinggi(m): %lf\nnama: %s m\nkehadiran: %d",a.usia,a.tinggi,a.nama.c_str(),a.kehadiran);

        //sending variabel to the topic "topic"
        data_publisher.publish(a);

        ros::spinOnce();
        loop_rate.sleep();

    }
    return 0;
}