#!/usr/bin/env bash
set -e

ssh-keyscan github.com >> ~/.ssh/known_hosts > /dev/null 2>&1

if [[ ! -d "content-test-data" ]]; then
    git clone git@github.com:demisto/content-test-data.git > /dev/null 2>&1
fi
