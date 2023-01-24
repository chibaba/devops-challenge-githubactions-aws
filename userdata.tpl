#!/bin/bash

# Install Ruby 2.0 and necessary dependencies
sudo apt-get update
sudo apt-get install -y ruby2.0 ruby2.0-dev
sudo gem install jekyll bundler

# Clone Bootstrap repository
git clone git@github.com:twbs/bootstrap.git

# Build Jekyll in root directory
cd bootstrap
jekyll build

# Create _gh_pages folder and drop version.txt file
mkdir _gh_pages
echo "Github Action Job: $GITHUB_JOB  Build Number: $GITHUB_RUN_NUMBER" > _gh_pages/version.txt

# Publish artefacts to S3 Bucket
# Make sure you have the S3 plugin installed and configured
s3_website push --site _gh_pages
