#!/bin/bash

sample_cnt=3
for index in $sample_cnt
do
    per_file_suffix=dog"$index"_frozen
    eval "python3 inference.py --prompt \"A dog\" --model ./models/model_scope_diffusers --sdp --suffix $per_file_suffix --output-dir ./output/"
done