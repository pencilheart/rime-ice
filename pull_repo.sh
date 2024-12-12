#!/bin/bash

# 确保脚本具有执行权限
chmod +x ~/Library/rime/pull_repo.sh

# 在日志中记录当前时间
echo "$(date) - Starting pull_repo.sh" > ~/Library/rime/pull_repo.log

# 继续执行 Git 操作
cd ~/Library/rime
git remote get-url upstream || git remote add upstream https://github.com/iDvel/rime-ice.git
git fetch upstream main
git checkout main
git merge upstream/main --allow-unrelated-histories
git push origin main

# 记录结束时间
echo "$(date) - Finished pull_repo.sh" >> ~/Library/rime/pull_repo.log

