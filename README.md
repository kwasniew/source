Publisher:
* use GITHUB_TOKEN to avoid commit to main triggering next build
* add permissions for writing
* specify explicit registry-url to avoid npm 404 errors
* cd.yaml should check if the current version is alpha and conventional commit is made (fix: or :feat or :refactor)

Consumer: 
* dependabot can run daily but not hourly/custom cron
* dependabot can open PR and we can run tests on this PR
* we can automerge dependabot PRs (https://docs.github.com/en/code-security/dependabot/working-with-dependabot/automating-dependabot-with-github-actions#enable-auto-merge-on-a-pull-request)
* we should have branch protection rules so that we don't merge without PR build
* branch protection rules prevent version bump (https://github.com/community/community/discussions/13836)
* the version bump may meed to go through the PR with auto approval on success
* yarn upgrade unleash-server --latest

