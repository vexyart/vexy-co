# Repository contents

The `vexy-co` repository on the `main` branch holds the files below. There is no source code, no package metadata (`pyproject.toml`, `package.json`) and nothing to install.

| Path | Content |
| --- | --- |
| `README.md` | The project title and the line "Tools around Large Language Model", followed by a link to this site |
| `LICENSE` | The Apache License, Version 2.0, January 2004, unmodified, including the appendix with the `Copyright [yyyy] [name of copyright owner]` placeholder |
| `.gitignore` | Patterns for files that should not be committed |
| `build.sh` | Builds this documentation site; see [Documentation build](documentation.md) |
| `src_docs/` | Source of this site: `mkdocs.yml`, `build.sh` and the pages in `src_docs/md/` |
| `docs/` | The built site, served by GitHub Pages at `https://vexy.dev/vexy-co/` |
| `.github/workflows/docs.yml` | Rebuilds `docs/` when `src_docs/` changes |

## What the .gitignore tells you

The `.gitignore` is written for Python work. It ignores, among others:

- Python byte code and caches: `__pycache__/`, `*.py[codz]`, `.mypy_cache/`, `.pytest_cache/`, `.ruff_cache/`, `.pytype/`.
- Build output: `build/`, `dist/`, `sdist/`, `wheels/`, `*.egg-info/`, `target/`.
- Virtual environments: `.venv`, `venv/`, `env/`, `ENV/`.
- Version files written by build tools: `__version__.py`, `_version.py`.
- Local secrets and settings: `.env`, `.envrc`, `.pypirc`.
- Any file or directory named `external`, for material that is kept locally but not published.

So future code in this repository is expected to be Python, packaged with a build backend that writes a version file, as the related tools are.

## Tags

| Tag | Commit | Date | Change |
| --- | --- | --- | --- |
| `v1.0.0` | `e109d75` | 2025-09-05 | Rewrote `.gitignore` (76 lines added, 192 removed) |

The first commit, `822f848` on 2025-09-05, added `README.md`, `LICENSE` and the original `.gitignore`.

## Where the code is

The tools announced by "Tools around Large Language Model" are developed in separate repositories. See [Related projects](related-projects.md).
