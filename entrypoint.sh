#!/bin/bash

echo "## Go to workspace"
cd /github/workspace

echo "## Running Bubulle"
bubulle | echo $?
