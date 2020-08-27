#!/bin/sh
inputImage=${1}
csv=${2}
outputFolder=${3}


CUDA_VISIBLE_DEVICES=0 python /input/demo.py \
--Transformation TPS --FeatureExtraction ResNet --SequenceModeling BiLSTM --Prediction Attn \
--input_image ${inputImage} \
--boxescsv ${csv} \
--output_folder ${outputFolder} \
--saved_model /input/TPS-ResNet-BiLSTM-Attn.pth