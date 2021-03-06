#!/bin/bash
# check remote repo
GIT_REMOTES=`git remote show`
# Git status with not-pushed commits
if ! git ls-files >& /dev/null; then
    echo "NOT GIT REPOSITORY. SKIP."
    exit -1
fi
echo ''
echo -e "\033[32m# STATUS OF CURRENT BRANCH\033[0m"
git status
echo ''
if [[ $GIT_REMOTES ]]; then
    echo -e "\033[32m# RECENT LOGS\033[0m"
    #git log HEAD..origin/master --pretty=oneline --graph --abbrev-commit --decorate -n 4
    git log --pretty=oneline --graph --abbrev-commit --decorate -n 5
    echo ''
fi
if [[ `git remote` ]]; then
    echo -e "\033[32m# UNPUSHED RECENT COMMITS\033[0m"
    #git log origin/master..HEAD --pretty=oneline --graph --abbrev-commit --decorate -n 4
    git log --pretty=oneline --graph --abbrev-commit --decorate -n 5 --branches --not --remotes
    echo ''
fi
