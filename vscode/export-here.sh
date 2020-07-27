#!/bin/bash

code --list-extensions | xargs -L 1 echo code --install-extension > extensions.sh
cp /Users/cam/Library/Application\ Support/Code/User/settings.json .
