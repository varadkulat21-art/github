#!/usr/bin/env bash
# Run this script from the mcino-Introduction-to-Git-and-GitHub repository.
set -u

read -r -p "GitHub username that owns your fork: " owner
read -r -p "Upstream pull request number: " pr_number

{
  echo '$ curl -sS https://api.github.com/repos/'"$owner"'/mcino-Introduction-to-Git-and-GitHub'
  curl -sS "https://api.github.com/repos/${owner}/mcino-Introduction-to-Git-and-GitHub"
  echo
} > forked-repo

{
  echo '$ git checkout main'
  git checkout main
  echo '$ git merge bug-fix-typo'
  git merge bug-fix-typo
} > merge_branches 2>&1 || true

{
  echo '$ curl -sS https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls/'"$pr_number"
  curl -sS "https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls/${pr_number}"
  echo
} > bug-fix-revert

{
  echo '$ git fetch --all'
  git fetch --all
  echo '$ git branch -avv'
  git branch -avv
} > github-branches 2>&1

echo "Captured actual command output files in: $(pwd)"
echo "Review each file before submitting it to Coursera."
