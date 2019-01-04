#!/usr/bin/env bash

# default convert
#python convert.py yolov3-tiny.cfg yolov3-tiny.weights model_data/yolov3_tiny.h5

# transfer my model
# python convert.py turtlebot_model/yolov3-tiny.cfg turtlebot_model/yolov3-tiny_final.weights model_data/yolov3_tiny_turtlebot.h5

#
python yolo_video.py --model turtlebot_model/yolov3_tiny_turtlebot.h5 --anchors turtlebot_model/anchor.txt --classes turtlebot_model/classes.txt --gpu_num 1 --input /media/zq610/2C9BDE0469DC4DFC/ubuntu/dl_dataset/turtlebot/raw_videos/turtlebot2_1.mp4

#python yolo_video.py --model turtlebot_model/yolov3_tiny_turtlebot.h5 --anchors turtlebot_model/anchor.txt --classes turtlebot_model/classes.txt --gpu_num 0 --image

#python yolo_video.py --model model_data/yolov3_tiny.h5 --anchors model_data/tiny_yolo_anchors.txt --classes model_data/coco_classes.txt --gpu_num 0 --input /media/zq610/2C9BDE0469DC4DFC/ubuntu/dl_dataset/turtlebot/raw_videos/turtlebot2_1.mp4

#python yolo_video.py