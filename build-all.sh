#!/bin/bash

cd courses

for dir in */; do
    if [ -f "$dir/package.json" ]; then
        echo "Installing and building $dir"
        cd "$dir"
        npm install
        npx vite build
        cd ..
    else
        echo "Skipping $dir - no package.json"
    fi
done