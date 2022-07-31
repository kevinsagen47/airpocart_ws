# TechVidvan Human pose estimator
# import necessary packages

import cv2
import mediapipe as mp
import pyrealsense2 as rs
import numpy as np
# initialize Pose estimator
mp_drawing = mp.solutions.drawing_utils
mp_pose = mp.solutions.pose
pipeline = rs.pipeline()
config = rs.config()
config.enable_stream(rs.stream.color,640,480,rs.format.bgr8,30)

pose = mp_pose.Pose(
    min_detection_confidence=0.5,
    min_tracking_confidence=0.5)
pipeline.start(config)
# create capture object
#cap = cv2.VideoCapture('video.mp4')

while (True):
    frames = pipeline.wait_for_frames()
    #depth_frame = frames.get_depth_frame()
    color_frame = frames.get_color_frame()
    if not color_frame:
            continue
    # read frame from capture object
   # _, frame = cap.read()
    frame = np.asanyarray(color_frame.get_data())
    try:
        # convert the frame to RGB format
        #RGB = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)

        # process the RGB frame to get the result
        results = pose.process(frame)

        print(results.pose_landmarks)
        # draw detected skeleton on the frame
        mp_drawing.draw_landmarks(
            frame, results.pose_landmarks, mp_pose.POSE_CONNECTIONS)

        # show the final output
        cv2.imshow('Output', frame)
    except:
        break
    if cv2.waitKey(1) == ord('q'):
        break
#cap.release()
cv2.destroyAllWindows()

