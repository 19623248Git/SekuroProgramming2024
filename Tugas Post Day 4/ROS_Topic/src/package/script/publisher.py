#!/usr/bin/env python3

import rospy
from package.msg import VarMsg

def talker():
    #initialize publisher
    message_pub = rospy.Publisher("topic_python", VarMsg, queue_size=10)

    #initialize node
    rospy.init_node('publisher',anonymous=True)

    #rate of sending: 1Hz
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():

        #get type variabel from msg
        dataVariabel = VarMsg()

        #declaring value to each variabel
        dataVariabel.usia = 18
        dataVariabel.tinggi = 1.7
        dataVariabel.nama = "Jovi"
        dataVariabel.kehadiran = True

        #print out with rospy.loginfo
        rospy.loginfo("usia: %ld" % dataVariabel.usia)
        rospy.loginfo("tinggi (m): %lf" % dataVariabel.tinggi)
        rospy.loginfo("nama: %s" % dataVariabel.nama)
        rospy.loginfo("kehadiran: %d" % dataVariabel.kehadiran)

        #send variabel to the topic "topic_python"
        message_pub.publish(dataVariabel)

        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
