Findings:
* use GITHUB_TOKEN to avoid commit to main triggering next build
* add permissions for writing
* specify explicit registry-url to avoid npm 404 errors
* dependabot can run daily but not hourly/custom cron
* dependabot can open PR and we can run tests on this PR
* we can automerge dependabot PRs (https://docs.github.com/en/code-security/dependabot/working-with-dependabot/automating-dependabot-with-github-actions#enable-auto-merge-on-a-pull-request)
* we should have branch protection rules so that we don't merge without PR build
* branch protection rules prevent version bump (https://github.com/community/community/discussions/13836)