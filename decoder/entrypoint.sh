#!/bin/bash

cd /linker/stack

./config.sh

echo "Stack Configured"

cd /linker/stack

./start-decoder.sh

echo "Decoder Started"
