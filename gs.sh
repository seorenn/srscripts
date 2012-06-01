#!/bin/bash
# Git status with not-pushed commits
echo ''
echo -e "\033[32m# STATUS\033[0m"
git status
echo ''
if [[ `git remote` ]]; then
    echo -e "\033[32m# UNPUSHED COMMITS\033[0m"
    git log origin/master..HEAD --oneline
    echo ''
fi
