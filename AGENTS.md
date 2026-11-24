---
this_file: AGENTS.md
---

# Documentation

Edit pages in `src_docs/md/` and configure the site in `src_docs/mkdocs.yml`.
Keep `extra.fly.chrome` set to `none` for this unofficial site.

Run `./build.sh docs` to rebuild the tracked `docs/` directory in strict mode.
The shared local and CI build script, `src_docs/build.sh`, uses fly-january 0.4.0 or later (remote theme assets).
