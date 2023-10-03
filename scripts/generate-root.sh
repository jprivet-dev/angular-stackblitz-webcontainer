#!/usr/bin/env bash

# Usage:
# $ . scripts/generate-root.sh

echo "########################################"
echo "# Generate a new Angular app (in root) #"
echo "########################################"

echo "> Remove the old Angular app"
rm .editorconfig
rm .gitignore
rm -rf .vscode
rm angular.json
rm package*.json
rm -rf src
rm tsconfig*.json
rm -rf node_modules

echo "> Keep the current README.md"
mv README.md __README.md

echo "> Create an Angular app"
ng new app --directory ./ --skip-git true --routing --style scss --defaults --strict true

echo "> Restore the README.md"
rm README.md
mv __README.md README.md

echo "> Builds and serves your application with \"$ ng serve\""
