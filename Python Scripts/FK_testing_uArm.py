##########################################################################################################################################
#                                                                                                                                        #
# This script allows you to send desired joint angles to the uArm Swift Pro and the robot will actuate and position itself accordingly   #
#                                                                                                                                        #
##########################################################################################################################################

import os
import sys
sys.path.append(os.path.join(os.path.dirname(__file__), '../..'))
from uarm.wrapper import SwiftAPI

#Testing uArm Swift Pro API versus simplified kinematic model 

swift = SwiftAPI(filters={'hwid': 'USB VID:PID=2341:0042'}, cmd_pend_size=2, callback_thread_pool_size=1)

swift.waiting_ready()

device_info = swift.get_device_info()
print(device_info)
firmware_version = device_info['firmware_version']
if firmware_version and not firmware_version.startswith(('0.', '1.', '2.', '3.')):
    swift.set_speed_factor(0.00005)

swift.set_mode(0)

speed = 100000
swift.reset()

# Testing forward kinematics - uArm Swift Pro - SCHDAM003 - Damien Schütz - University of Cape Town

# Linear relationships were developed between the proposed kinematic model and the actual model to allow functionality between the analytical solution and the API
# Enter desired input angles to the uArm
# Enter a value [-90,90] as theta_1 to control the base joint
# Enter a value [0,130] as theta_1 to control the shoulder joint
# Enter a value [-180,-45] as theta_1 to control the elbow joint

theta_1 = -39
theta_1_to_servo = (theta_1 + 90)

theta_2 = 37
theta_2_2_servo = (theta_2-1)

theta_3 = -111
theta_3_2_servo = (-theta_3-theta_2_2_servo-7)

swift.set_servo_angle(servo_id=0,angle=theta_1_to_servo)
swift.set_servo_angle(servo_id=1, angle=theta_2_2_servo)
swift.set_servo_angle(servo_id=2, angle=theta_3_2_servo)




 
