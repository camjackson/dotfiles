#/bin/bash

apm install \
  linter \
  linter-eslint \
  hyperclick \
  js-hyperclick \
  language-babel \
  language-terraform \
  linter-terraform-syntax \
  expand-region \
  console-log \
  git-blame \
  merge-conflicts \
  highlight-selected \
  language-docker \
  next-line-comment \
  language-patch \

echo "Don't forget to:"
echo " 1. Turn on autosave"
echo " 2. Turn on invisibles, etc"
echo " 3. Turn on eslint autofix"
echo " 4. Turn off console-log context menus"
echo " 5. Add a keymap for expand-region in ~/.atom/keymap.cson:"
echo "'atom-text-editor':"
echo "  'alt-up': 'expand-region:expand'"
echo "  'alt-down': 'expand-region:shrink'"
