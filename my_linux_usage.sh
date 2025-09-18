#!/bin/bash
##############################
echo"This is a  script use to measure the CPU ,Disk "

#Author:  Willington juma
#Date:  20th June 2024
#Version: 1.0
##############################
# Function to display CPU usage 
function display_cpu_usage {
    echo "CPU Usage:"
    top -bn1 | grep "Cpu(s)" | awk '{print "User: " $2 "%, System: " $4 "%, Idle: " $8 "%"}'
    echo ""
}       
    
# Function to display Disk usage    
function display_disk_usage {
    echo "Disk Usage:"
    df -h | awk 'NR==1 || /^\/dev\// {print $1, $2, $3, $4, $5, $6}'
    echo ""
}
# Function to display Memory usage
function display_memory_usage {
    echo "Memory Usage:"
    free -h | awk 'NR==1 || /^Mem:/ {print $1, $2, $3, $4, $5, $6}'
    echo ""
}           
# Main script execution     
echo "System Resource Usage:"   
display_cpu_usage
display_disk_usage
display_memory_usage
echo "End of the script"
echo "This is the end of the script"
echo "Thank you for using the script"
echo "Goodbye!"
echo "Goodbye!"
echo "By Willington Juma "
