#!/bin/bash -ex

rm -rf public/*

flutter pub get

flutter build web --web-renderer canvaskit

cp -r build/web/* public/
