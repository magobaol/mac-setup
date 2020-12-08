#!/bin/bash

if [ -d .git ]; then
    echo "Installing git hooks..."
    cd .git/hooks && ln -fFs ../../hooks/* ./
fi
