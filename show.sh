#!/bin/bash
yum install -y ImageMagick
convert  $1  -geometry 480x480  sixel:- 

