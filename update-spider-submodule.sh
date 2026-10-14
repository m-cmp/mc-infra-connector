#!/bin/bash

# Initialize and update submodule if not already done
if [ ! -d "cb-spider/.git" ] && [ ! -f "cb-spider/.git" ]; then
  echo "Initializing and updating CB-Spider submodule..."
  git submodule update --init --recursive cb-spider
  if [ $? -ne 0 ]; then
    echo "Error: Failed to initialize submodule"
    exit 1
  fi
fi

cd cb-spider || { echo "Error: Failed to enter cb-spider directory."; exit 1; }

# Fetch all tags from the remote repository
git fetch --tags

# Sort and display the list of available tags and get user input
echo "[Available tags in CB-Spider]"
git tag -l | sort -V
echo "[Select a tag to checkout]"
if [ -n "$1" ]; then
  TARGET_TAG="$1"
  echo "$TARGET_TAG"
else
  read -r TARGET_TAG
fi

# Checkout to the tag specified by the user
git checkout tags/$TARGET_TAG
if [ $? -ne 0 ]; then
  echo "Error: Failed to checkout tag $TARGET_TAG"
  exit 1
fi

# Navigate back to the parent directory
cd ..

# Stage the changes
git add -u

# Create a commit
git commit -m "Update Submodule CB-Spider $TARGET_TAG"

echo "CB-Spider successfully updated to $TARGET_TAG"
echo "ToDo: git log"
echo "ToDo: git push origin"
