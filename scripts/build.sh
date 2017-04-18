#!/bin/sh

# Transpile
babel --presets react,es2015 js/source -d js/build
# Package
browserify js/build/app.js -o bundle.js
# CSS packaging
cat css/*/* css/*.css | sed 's/..\/..\/images/images/g' > bundle.css
#
date; echo;
