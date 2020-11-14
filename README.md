# weneedfeed-action

GitHub Action to generate RSS feeds from [weneedfeed](https://github.com/r7kamura/weneedfeed).yml.

## Usage

This is an example `.github/workflows/publish.yml` for a GitHub Action workflow that generates RSS feeds from `weneedfeed.yml` and then publish them to GitHub Pages.

```yaml
name: publish

on:
  push:
    branches:
      - master
  schedule:
    - cron: "0 0 * * *"

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: r7kamura/weneedfeed-action@v2
        with:
          base_url: https://user.github.io/repo
      - uses: peaceiris/actions-gh-pages@v3
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: output
```

## Inputs

### `base_url`

- Base URL for weneedfeed.
- required
- example: `"https://user.github.io/repo"`

### `schema_path`

- Path to weneedfeed YAML schema file.
- default: `"weneedfeed.yml"`
