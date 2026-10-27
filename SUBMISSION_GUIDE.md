# Coursera Git/GitHub Submission Fix Guide

This guide is included to help you correct the answers that received 0 points. It is not a substitute for actual repository evidence.

## Question 5 — public URL to `simple-interest.sh`

After uploading this project to a public repository you own, submit:

`https://github.com/YOUR-USERNAME/github-final-project/blob/main/simple-interest.sh`

Replace `YOUR-USERNAME` with your real GitHub username. Open the link in a private/incognito browser window to confirm that it is publicly accessible. The previously submitted `Vedant-Divate` URL may not establish ownership of your own repository, so use your own repository URL if that is what the assignment asks for.

## Question 6 — `forked-repo`

This question asks for a curl command AND its real output confirming your fork of:
`ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub`

Run from a terminal (replace `YOUR-GITHUB-USERNAME` with the account that owns the fork):

```bash
curl -sS https://api.github.com/repos/YOUR-GITHUB-USERNAME/mcino-Introduction-to-Git-and-GitHub
```

Save both the command and its actual output in a file named `forked-repo`. Check for `"fork": true` and the `"parent"` repository. If the API returns `Not Found`, check the fork's exact owner/name and public visibility.

## Question 7 — `merge_branches`

Run these commands inside your **mcino-Introduction-to-Git-and-GitHub** assignment repository, not in this simple-interest project:

```bash
git checkout main
git merge bug-fix-typo
```

Save the commands and the actual terminal output in `merge_branches`. The grader expects evidence that `README.md` changed and a summary such as `1 file changed, 1 insertion(+), 1 deletion(-)`. The exact output depends on your repository's actual commit history.

## Question 8 — `bug-fix-revert`

Find the actual pull-request number on GitHub. Then run this command, replacing `PR_NUMBER`:

```bash
curl -sS https://api.github.com/repos/ibm-developer-skills-network/mcino-Introduction-to-Git-and-GitHub/pulls/PR_NUMBER
```

Save the command and its real JSON output in `bug-fix-revert`. Confirm that the response is for the correct PR and that `head.repo.full_name` identifies your fork. Do not invent a PR number or paste example JSON.

## Question 9 — `github-branches`

Inside the **mcino-Introduction-to-Git-and-GitHub** repository, run:

```bash
git fetch --all
git branch -avv
```

Save the actual output in `github-branches`. The grader expects the three branch names `main`, `bug-fix-typo`, and `bug-fix-revert` with their status information. If a branch is missing, create/checkout it as required by the course instructions; do not type a fake branch listing.

## Important

Questions 6–9 concern the GitHub fork/branch/pull-request exercise, while Question 5 concerns `github-final-project`. These are different repositories/workflows. This ZIP provides the calculator project files; it cannot create your GitHub fork or pull request for you, and it intentionally does not include fabricated terminal outputs.
