#!/usr/bin/python

import os, random

objWallpaper = "/home/david/Dropbox/Pictures/Wallpaper/1920x1080/"
strWallpaper1 = os.listdir(objWallpaper)[random.randrange(1, len(os.listdir(objWallpaper)))]
strWallpaper2 = os.listdir(objWallpaper)[random.randrange(1, len(os.listdir(objWallpaper)))]
while strWallpaper1 == strWallpaper2:
    strWallpaper2 = os.listdir(objWallpaper)[random.randrange(1, len(os.listdir(objWallpaper)))]

os.system('convert "' + objWallpaper + strWallpaper1 + '" -resize "1920x1080" /tmp/WP1.png')
os.system('convert "' + objWallpaper + strWallpaper2 + '" -resize "1920x1080" /tmp/WP2.png')
os.system('convert /tmp/WP1.png /tmp/WP2.png +append /tmp/WP.png')
os.system('hsetroot -full /tmp/WP.png')
