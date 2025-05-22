This repo is for deploying a different version of https://github.com/emcee5601/fit-test-console

This repo deploys to https://emcee5601.github.io/mftc-old/

## Usage
- Edit [mftc-version.txt](mftc-version.txt)
- Set its content to the tag or hash from [fit-test-console](https://github.com/emcee5601/fit-test-console/tags) to deploy
- This must be v1.4.2 or later. Previous versions do not have relative paths so routing will be broken.
- A github action is set up to fetch the specified tag/hash from fit-test-console and deploy it to this repo's Pages url when the version file changes. Since this deploys to the same origin as fit-test-console, only one of these may be installed at a time. Fork this repo to remove that restriction.


## Deploy your own instance
- [Fork](https://github.com/emcee5601/mftc-old/fork) this repo ([how to fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo))
- edit mftc-version as above
- your page should deploy to https://\<your-user-name\>.github.io/\<your-repo-name\>/
  - (so change this file above to avoid confusion)
