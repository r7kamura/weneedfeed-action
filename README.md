# actions-weneedfeed

GitHub Action for invoking [weneedfeed](https://github.com/r7kamura/weneedfeed).

## Usage

Add weneedfeed.yml and .github/workflows/publish.yml:

```yaml
name: publish

on:
  push:
    branches:
      - master

jobs:
  publish:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: r7kamura/actions-weneedfeed@v0.1.0
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
