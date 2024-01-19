#!/usr/bin/env python3

import rospy
from package.srv import MagCalc, MagCalcRequest

def MagCalc_client():
    #initialize node
    rospy.init_node("client")

    rospy.wait_for_service("MagCalc_Python")
    rate = rospy.Rate(1)

    while not rospy.is_shutdown():
        try:
            #initialize service request object
            data = MagCalcRequest()

            #input komponen
            rospy.loginfo("please input components x,y,z !")
            data.komponenX = float(input("X: "))
            data.komponenY = float(input("Y: "))
            data.komponenZ = float(input("Z: "))

            #initialize client
            magcalc = rospy.ServiceProxy("MagCalc_Python", MagCalc)
            response = magcalc(data)

            #print out response
            rospy.loginfo("magnitude = %lf", response.magnitude)
            rate.sleep()
        except rospy.ServiceException as e:
            print("service call failed %s", str(e))

if __name__ == "__main__":
    MagCalc_client()