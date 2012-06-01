#!/bin/bash
echo ''
echo -ne "\033[32mCOMMIT MESSAGE: \033[0m"
read commit_message
len=${#commit_message}
if [ "$len" -lt "1" ]; then
    echo -e "\033[32mCANCLED\033[0m"
    echo ""
    exit -1
fi
echo ""
echo -e "\033[32m# TRYING TO STAGE ALL NEW FILES AND CHANGES...\033[0m"
git add .
git commit -am "${commit_message}"
echo ""
