#!/bin/bash

run_microservice() {
  local microservice_dir=$1
  (cd "$microservice_dir" && ./run.sh)
}

run_microservice "frontend" &
run_microservice "search" &
run_microservice "frame_extractor" &
run_microservice "media_server" &
run_microservice "Vision_Transformer" &
run_microservice "speech_recog" &

wait