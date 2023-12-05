#!/bin/bash

model='./outputs/train_2023-11-30T20-15-05-prompt-unique-token-class-preservation-loss-lambda-0_3/'
suffix=unique-token-class-preservation-loss-lambda-0_3_scheduler_$(date +%s)
prompts=("\"A « dog\"" "\"A « dog is running\"" "\"A dog\"" "\"A dog is running\"")
for prompt in "${prompts[@]}"
do
    i=0
    while [ $i -ne 5 ]
    do
    per_file_suffix=_"$suffix"_try_"$i"_
    eval "python inference.py --prompt $prompt --model $model --sdp --suffix $per_file_suffix --output-dir ./output/$suffix"
    i=$((i + 1))
    done
done