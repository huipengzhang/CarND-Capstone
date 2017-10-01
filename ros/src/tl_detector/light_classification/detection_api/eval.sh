#!/bin/bash

# PIPELINE_CONFIG=./ssd_inception_v2_lights.config

# PIPELINE_CONFIG=./faster_rcnn_resnet101_light.config
# TRAIN_DIR=./models/faster_rcnn_other/train
# EVAL_DIR=./models/faster_rcnn_other/eval

# PIPELINE_CONFIG=./models/faster_rcnn_otherd/faster_rcnn_resnet101_light.config
# TRAIN_DIR=./models/faster_rcnn_otherd/train
# EVAL_DIR=./models/faster_rcnn_otherd/eval

# PIPELINE_CONFIG=./models/ssd_my1/ssd_inception_v2_lights.config
# TRAIN_DIR=./models/ssd_my1/train
# EVAL_DIR=./models/ssd_my1/eval

PIPELINE_CONFIG=./models/faster_rcnn_sim/faster_rcnn_resnet101_light_sim.config
TRAIN_DIR=./models/faster_rcnn_sim/train
EVAL_DIR=./models/faster_rcnn_sim/eval


echo PIPELINE_CONFIG = ${PIPELINE_CONFIG}

echo Evaluating ...

python object_detection/eval.py \
    --logtostderr \
    --pipeline_config_path=${PIPELINE_CONFIG} \
    --checkpoint_dir=${TRAIN_DIR} \
    --eval_dir=${EVAL_DIR}
