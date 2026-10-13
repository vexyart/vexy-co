# Changelog

All dates are commit dates on the `main` branch.

## Unreleased

- Added this documentation site: sources in `src_docs/md/`, configuration in `src_docs/mkdocs.yml`, build script `src_docs/build.sh`, output in `docs/`, served at `https://vexy.dev/vexy-co/`.
- Added the root `build.sh`; `./build.sh docs` builds the site.
- Added the `Docs` workflow (`.github/workflows/docs.yml`), which rebuilds `docs/` on pushes to `main` that change `src_docs/`.
- Added a documentation link to `README.md`.
- Added `.omc/`, `node_modules/` and `site/` to `.gitignore`.

## v1.0.0 — 2025-09-05

- Rewrote `.gitignore` as a shorter, sorted list of Python-oriented patterns, adding `external`, `__version__.py` and `_version.py`, among others. 76 lines added, 192 removed.

## Initial commit — 2025-09-05

- Added `README.md` with the description "Tools around Large Language Model".
- Added `LICENSE` with the Apache License 2.0.
- Added a 207-line Python `.gitignore`.
