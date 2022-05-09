#!/usr/bin/env bash

cd _site
touch .nojekyll
git init
git add .
git commit -m "publishing site"
git remote add origin git@github.com:florentdupont/florentdupont.github.io.git
git branch -M main
git push -f -u origin main