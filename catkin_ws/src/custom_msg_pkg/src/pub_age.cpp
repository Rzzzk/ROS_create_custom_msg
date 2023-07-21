#include <ros/ros.h>
/*include the custem message*/
#include "custom_msg_pkg/age.h"


int main(int argc, char * argv[])
{
    /*Init a node ang create a handler*/
    ros::init(argc, argv, "publisher");
    ros::NodeHandle n;
    /*create a new topic/publisher with send my custom message*/
    ros::Publisher pub = n.advertise<custom_msg_pkg::age>("pub_age_topic",1000);

    /*declare the messge value*/
    custom_msg_pkg::age msg;
    msg.year  = 4;
    msg.month = 9;
    msg.day   =24;

    ros::Rate rate(1);

    while(ros::ok())
    {
        /*publish the message*/
        pub.publish(msg);
        
        /*print the messge in the terminal*/
        ROS_INFO("Years  :[ %d ]",msg.year);
        ROS_INFO("Months :[ %d ]",msg.month);
        ROS_INFO("Days   :[ %d ]",msg.day);
        
        rate.sleep();
        ros::spinOnce();
    }

    return 0;
}
