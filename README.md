This repo deploys a [user-specified version](mftc-version.txt) of https://github.com/emcee5601/fit-test-console to Github Pages.

This repo deploys to https://emcee5601.github.io/mftc-old/
Since this is the same origin as https://emcee5601.github.io/fit-test-console/ there may be some [unexpected behavior](https://web.dev/articles/building-multiple-pwas-on-the-same-domain).

Fork this repo to deploy your own instance.

## Usage
- Edit [mftc-version.txt](mftc-version.txt)
- Set its content to the tag or hash to deploy. See [fit-test-console tags](https://github.com/emcee5601/fit-test-console/tags) for available versions.
- This must be v1.4.2 or later. Previous versions do not have relative paths so routing will be broken.
- Commit the change to main.
- Wait for the deploy actions to complete: https://github.com/emcee5601/mftc-old/actions
- Refresh the page to pick up changes: https://emcee5601.github.io/mftc-old/


## Deploy your own instance
- [create a github account](https://github.com/signup) if you don't have one 
- [Fork](https://github.com/emcee5601/mftc-old/fork) this repo ([how to fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/fork-a-repo))
- enable github [pages](https://github.com/emcee5601/mftc-test/settings/pages) to deploy from gh-pages branch ([how to set up github pages](https://docs.github.com/en/pages/quickstart))
- edit mftc-version.txt (in your fork) as above (you can use the github web interface: [how to edit files](https://docs.github.com/en/repositories/working-with-files/managing-files/editing-files))
- your instance of mftc should deploy to https://\<your-user-name\>.github.io/\<your-repo-name\>/
  - (so change this file above to avoid confusion)


## How it works
- A [Github Action](.github/workflows/deploy-mftc-action.yaml) is triggered when the [mftc-version.txt](https://github.com/emcee5601/mftc-old/blob/main/mftc-version.txt) file is updated.
  - This pulls the [fit-test-console repo](https://github.com/emcee5601/fit-test-console) at the specified version.
  - Install dependencies and build as usual.
  - Call gh-build to publish to Github Pages.

No need to fork the main repo or do anything locally.
