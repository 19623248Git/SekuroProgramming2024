#!/usr/bin/env python3

import rospy
from package.msg import VarMsg

def callback(data):
    #print out
    
    rospy.loginfo("usia: %ld" % data.usia)
    rospy.loginfo("tinggi (m): %lf" % data.tinggi)
    rospy.loginfo("nama: %s" % data.nama)
    rospy.loginfo("kehadiran: %d" % data.kehadiran)

def listener():
    #initialize node
    rospy.init_node("subscriber",anonymous=True)

    #initialize subscriber
    rospy.Subscriber("topic_python", VarMsg, callback)

    rospy.spin()

if __name__ == "__main__":
    listener()