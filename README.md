# actions-weneedfeed

GitHub Action to generate RSS feeds by [weneedfeed](https://github.com/r7kamura/weneedfeed).

## Inputs

### `base_url`

- Base URL to generate URLs in weneedfeed.
- required
- e.g. `"https://user.github.io/repo"`

### `schema_path`

- Path to weneedfeed schema YAML file.
- default: `"weneedfeed.yml"`
