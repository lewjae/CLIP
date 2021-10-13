from numpy.lib.type_check import _imag_dispatcher
import pyrealsense2 as rs
import cv2
import numpy as np

import torch
import clip
from PIL import Image
import glob
import matplotlib.pyplot as plt

#installing some dependencies, CLIP was release in PyTorch
import subprocess

CUDA_version = [s for s in subprocess.check_output(["nvcc", "--version"]).decode("UTF-8").split(", ") if s.startswith("release")][0].split(" ")[-1]
print("CUDA version:", CUDA_version)

import numpy as np
import torch
import os

print("Torch version:", torch.__version__)

# upload a clip model

device = "cuda" if torch.cuda.is_available() else "cpu"
model, transform = clip.load("ViT-B/32", device=device)

# Enroll new product{class:description}
product_descriptions = {"coke": "coke zero sugar bottle ",
            "almondmilk": "amondmilk breeze vanilla",
            "wemo": "wemo light switch",
            "dietcoke": "diet coke bottle silver",
            "tussin": "tussin DM 8 FL OZ PEAK COLD 10 mL",
            "tussin_max": "tussin DM max 4 FL OZ maximum strength 20 mL",
            "sweetner": "sweetner  made with with sucralose, no calorie  great value ",
            "org_almondmilk": "almondmilk organic three trees original white 100 Calories",
            "water": "water pathwater purified refillable",
            "doorLock": "wi-fi august smart lock door wifi white home"}

# Write some Text
font                   = cv2.FONT_HERSHEY_SIMPLEX
topLeftCornerOfText = (10,500)
fontScale              = 1
fontColor              = (255,255,255)
lineType               = 2


#define our target classificaitons
class_names = list(product_descriptions.keys())
candidate_captions = list(product_descriptions.values())
text = clip.tokenize(candidate_captions).to(device)


def argmax(iterable):
    return max(enumerate(iterable), key=lambda x: x[1])[0]

try:
    pipeline = rs.pipeline()
    config = rs.config()
    config.enable_stream(rs.stream.color, 640,480, rs.format.bgr8, 30)
    pipeline.start(config)
    
    while True:
        frames = pipeline.wait_for_frames()    
        color_image = np.asarray(frames.get_color_frame().get_data())
        
        img = Image.fromarray(color_image)

        image = transform(img).unsqueeze(0).to(device)   # transform takes PIL image only - See clip.py

        with torch.no_grad():
            image_features = model.encode_image(image)
            text_features = model.encode_text(text)
            
            logits_per_image, logits_per_text = model(image, text)
            probs = logits_per_image.softmax(dim=-1).cpu().numpy()

            pred = class_names[argmax(list(probs)[0])]
            prob = max(list(probs)[0])
            if prob > 0.55:
                class_str = pred + ' ' + str(prob)
            else:
                class_str = "Not recognized"
            
        cv2.namedWindow("Classifier", cv2.WINDOW_NORMAL)
        cv2.resizeWindow("Classifier", 1280, 960)
        cv2.putText(color_image, class_str, (10,25),cv2.FONT_HERSHEY_SIMPLEX,1, (0,0,255),2)

        cv2.imshow("Classifier",color_image)
        cv2.waitKey(1)
    exit(0)
except Exception as e:
    print(e)
    pass