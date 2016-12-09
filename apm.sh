#/bin/bash

apm install \
  linter \
  linter-eslint \
  hyperclick \
  js-hyperclick \
  react \
  language-terraform \
  linter-terraform-syntax \
  expand-region \
  console-log \
  git-blame \
  merge-conflicts \

echo "Don't forget to:"
echo " 1. Turn on autosave"
echo " 2. Turn on invisibles, etc"
echo " 3. Turn on eslint autofix"
echo " 4. Add a keymap for expand-region in ~/.atom/keymap.cson:"
echo "'atom-text-editor':"
echo "  'alt-up': 'expand-region:expand'"
echo "  'alt-down': 'expand-region:shrink'"
