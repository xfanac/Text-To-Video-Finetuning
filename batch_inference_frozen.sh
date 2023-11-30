#!/bin/bash

for index in {1..3}
do
    eval "python3 inference.py --prompt \"A dog\" --model ./models/model_scope_diffusers --sdp --output-dir ./output/"
done