# GitHub Actions for GitHub API

This Action for [GitHub](https://docs.github.com/es/rest) allows arbitrary actions with the `GitHub` REST API.

<div align="center">
<img src="https://github.githubassets.com/images/modules/site/features/actions-icon-actions.svg" height="80"></img>
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
<img src="https://github.githubassets.com/images/modules/logos_page/Octocat.png" height="80"></img>
</div>

## Inputs

- `-ct | --clone_template` - clone a repository template.
  - `[REPO_TEMPLATE_NAME]`
  - `[REPO_TEMPLATE_OWNER]`
  - `[NEW_REPOSITORY_NAME]`
  - `[NEW_REPOSITORY_DESCRIPTION]`
  - `[NEW_REPOSITORY_IS_PRIVATE]`
- `-h | --help` - show help message.

## Environment variables

- `USER_NAME` - **Required**. The username to use for authentication.
- `USER_TOKEN` - **Required**. The token to use for authentication.

## Example

To authenticate with GitHub, and clone repository template:

```yaml
name: Clone repository template (Development)
on:
  push:
    branches:
      - dev

jobs:
  build:
    name: Build
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: giomarosorio/github-actions@dev
        with:
          args: --clone_template
        env:
          USER_NAME: ${{ secrets.USER_NAME }}
          USER_TOKEN: $${{ secrets.USER_TOKEN }}
          REPO_TEMPLATE_NAME: ${{ secrets.REPO_TEMPLATE_NAME }}
          REPO_TEMPLATE_OWNER: ${{ secrets.REPO_TEMPLATE_OWNER }}
          NEW_REPOSITORY_NAME: ${{ secrets.NEW_REPOSITORY_NAME }}
          NEW_REPOSITORY_DESCRIPTION: ${{ secrets.NEW_REPOSITORY_DESCRIPTION }}
          NEW_REPOSITORY_IS_PRIVATE: ${{ secrets.NEW_REPOSITORY_IS_PRIVATE }}
```
