# Documentation build

This site is generated from Markdown files in the repository and served by GitHub Pages at `https://vexy.dev/vexy-co/`.

## How it fits together

| Part | Role |
| --- | --- |
| `src_docs/md/*.md` | The pages you are reading |
| `src_docs/mkdocs.yml` | Site name, URL, theme, Markdown extensions and navigation |
| `src_docs/build.sh` | Runs ProperDocs with the MaterialX theme |
| `docs/` | The generated HTML site |
| GitHub Pages | Serves `docs/` from the `main` branch |
| `.github/workflows/docs.yml` | Rebuilds and commits `docs/` after changes |

## Build the site locally

### Prerequisites

- [uv](https://docs.astral.sh/uv/) on your `PATH`. The build script uses `uvx` to fetch the pinned tools; you do not install them yourself.

### Steps

1. From the repository root, run:

    ```bash
    ./build.sh docs
    ```

    or, equivalently, `src_docs/build.sh`.

2. The script runs `properdocs build --strict` with these pinned packages:

    | Package | Version |
    | --- | --- |
    | `properdocs` | 1.6.7 |
    | `mkdocs-materialx` | 10.1.8 |
    | `pymdown-extensions` | 11.0.1 |

3. The site is written to `docs/`, replacing what was there, and an empty `docs/.nojekyll` is added so GitHub Pages serves the files as they are.

Strict mode turns warnings into errors. A link to a page that does not exist, or a page missing from the `nav` list in `mkdocs.yml`, stops the build.

## Preview while you write

```bash
src_docs/build.sh serve
```

This starts a local server on `http://127.0.0.1:8000` and reloads the page when you save a file. Extra arguments are passed to `properdocs serve`, for example `src_docs/build.sh serve -a 127.0.0.1:8001`.

## Automatic rebuilds

The `Docs` workflow runs on every push to `main` that changes a file under `src_docs/` or the workflow itself, and can also be started by hand from the Actions tab. It:

1. checks out the repository;
2. installs uv;
3. runs `bash src_docs/build.sh`;
4. commits `docs/` as `github-actions[bot]` with the message `docs: rebuild site [skip ci]`, if anything changed, and pushes.

So a change to a page goes live after you push the Markdown; you do not need to commit `docs/` yourself, though you can.
