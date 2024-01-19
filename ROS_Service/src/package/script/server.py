#!/usr/bin/env python3

import rospy
import math
from package.srv import MagCalc, MagCalcResponse

def calc(req):
    #calculating
    rospy.loginfo("Displaying data...")
    rospy.loginfo("X: %ld" % req.komponenX)
    rospy.loginfo("Y: %ld" %req.komponenY)
    rospy.loginfo("Z: %ld" %req.komponenZ)
    rospy.loginfo("Sending Result...")

    magnitude = math.sqrt((req.komponenX**2) + (req.komponenY**2) + (req.komponenZ**2))
    
    return MagCalcResponse(magnitude)

def MagCalc_server():
    #initialize node
    rospy.init_node("server")

    #initialize service server
    server = rospy.Service("MagCalc_Python",MagCalc, calc)
    rospy.loginfo("Calculating Magnitude...")
    rospy.spin()

if __name__ == '__main__':
    MagCalc_server()
