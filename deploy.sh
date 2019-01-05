#!/bin/sh
set -e

# setup ssh-agent and provide the GitHub deploy key
eval "$(ssh-agent -s)"
openssl aes-256-cbc -K $encrypted_f4e9782a8fc3_key -iv $encrypted_f4e9782a8fc3_iv -in super_secret.txt.enc -out super_secret.txt -d
chmod 600 super_secret.txt
ssh-add super_secret.txt

# commit the assets in build/ to the gh-pages branch and push to GitHub using SSH
./node_modules/.bin/gh-pages -d site/ -b gh-pages -r git@github.com:${TRAVIS_REPO_SLUG}.git