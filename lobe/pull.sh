#!/bin/bash

TARGET=/media/chromebook/BLIX/lobe

mkdir -p $TARGET/brain/dnn/tfjs/ssd_lite/mobilenet_v2 ; cd $TARGET/brain/dnn/tfjs/ssd_lite/mobilenet_v2

wget -c https://storage.googleapis.com/tfjs-models/savedmodel/ssdlite_mobilenet_v2/model.json
wget -c https://storage.googleapis.com/tfjs-models/savedmodel/ssdlite_mobilenet_v2/group1-shard{1,2,3,4,5}of5

mkdir -p $TARGET/brain/dnn/tfjs/handpose/detector ; cd $TARGET/brain/dnn/tfjs/handpose/detector

wget -c https://tfhub.dev/mediapipe/tfjs-model/handdetector/1/default/1/model.json?tfjs-format=file
wget -c https://storage.googleapis.com/tfhub-tfjs-modules/mediapipe/tfjs-model/handdetector/1/default/1/model.json
wget -c https://storage.googleapis.com/tfhub-tfjs-modules/mediapipe/tfjs-model/handdetector/1/default/1/group1-shard1of2.bin

mkdir -p $TARGET/brain/dnn/tfjs/handpose/skeleton ; cd $TARGET/brain/dnn/tfjs/handpose/skeleton

wget -c https://tfhub.dev/mediapipe/tfjs-model/handskeleton/1/default/1/anchors.json?tfjs-format=file
wget -c https://tfhub.dev/mediapipe/tfjs-model/handskeleton/1/default/1/model.json?tfjs-format=file
wget -c https://storage.googleapis.com/tfhub-tfjs-modules/mediapipe/tfjs-model/handskeleton/1/default/1/anchors.json
wget -c https://storage.googleapis.com/tfhub-tfjs-modules/mediapipe/tfjs-model/handskeleton/1/default/1/model.json
wget -c https://storage.googleapis.com/tfhub-tfjs-modules/mediapipe/tfjs-model/handskeleton/1/default/1/group1-shard{1,2}of2.bin
