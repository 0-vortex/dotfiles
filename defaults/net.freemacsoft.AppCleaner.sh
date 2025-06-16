#!/usr/bin/env bash

defaults write net.freemacsoft.AppCleaner ProtectDefaultApps -int 0
defaults write net.freemacsoft.AppCleaner ProtectOpenedApps -int 1
defaults write net.freemacsoft.AppCleaner SUEnableAutomaticChecks -int 1
defaults write net.freemacsoft.AppCleaner SUSendProfileInfo -int 0

