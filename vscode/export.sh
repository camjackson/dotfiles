#!/bin/bash

echo '🔌 Exporting extensions...'
code --list-extensions | xargs -L 1 echo code --install-extension > install-extensions.sh

echo '⚙️  Exporting settings.json...'
cp /Users/cam/Library/Application\ Support/Code/User/settings.json .

echo '⌨️  Exporting keybindings.json...'
cp /Users/cam/Library/Application\ Support/Code/User/keybindings.json .

echo '✅ Done!'
