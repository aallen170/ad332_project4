#!/bin/bash
open test_website2.muse
./repeatedlyPushToGithub.sh
osascript newFinderWindow.scpt
osascript museAutoSave.scpt