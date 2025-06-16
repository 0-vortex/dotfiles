#!/usr/bin/env bash

defaults write org.m0k.transmission BindPort -int "62$((1 + RANDOM % 1000))"
defaults write org.m0k.transmission DownloadLocationConstant -int 1
defaults write org.m0k.transmission InfoVisible -int 0
defaults write org.m0k.transmission InspectorSelected -string "Info"
defaults write org.m0k.transmission NSNavLastRootDirectory -string "$HOME/Downloads"
defaults write org.m0k.transmission RandomPort -int 1
defaults write org.m0k.transmission WarningLegal -int 0
