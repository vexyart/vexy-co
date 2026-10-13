# Contributing

`vexy-co` is maintained by Adam Twardoch in the `vexyart` organisation on GitHub. Changes come in through the usual GitHub flow.

## Where to send a change

| You want to… | Go to |
| --- | --- |
| Fix or extend the model catalog tool | [vexyart/vexy-co-model-catalog](https://github.com/vexyart/vexy-co-model-catalog) |
| Fix or extend the assistant launcher and continuation tool | [vexyart/vexy-overnight](https://github.com/vexyart/vexy-overnight) |
| Change this umbrella repository or this site | [vexyart/vexy-co](https://github.com/vexyart/vexy-co) |

## Change a documentation page

### Prerequisites

- A fork or clone of `vexyart/vexy-co`.
- [uv](https://docs.astral.sh/uv/) installed.

### Steps

1. Create a branch.

    ```bash
    git switch -c docs-my-change
    ```

2. Edit the page in `src_docs/md/`. To add a page, create the file and add it to the `nav` list in `src_docs/mkdocs.yml`.
3. Build in strict mode and fix any warning it reports.

    ```bash
    src_docs/build.sh
    ```

4. Look at the result with `src_docs/build.sh serve`.
5. Commit the change to `src_docs/`. Committing the rebuilt `docs/` is optional; the `Docs` workflow rebuilds it after the merge.
6. Open a pull request against `main`.

## Writing conventions for this site

- Each page starts with one `# Title` line and has no front matter.
- Headings use sentence case.
- Commands, file names, flags and identifiers go in code style. Code blocks name their language: `bash`, `toml`, `json`, `text`.
- Describe what goes in, what the tool does and what comes out. Follow one concrete example rather than listing every option.
- State only what the code, the tests or a real run confirm. When a page describes another repository, check the claim against that repository.
- Link to other pages with relative links (`related-projects.md`). Links outside `src_docs/md/` break the strict build; use the full GitHub URL instead.

## Licence of contributions

By the terms of section 5 of the Apache License 2.0, a contribution you submit to this repository is licensed under that licence, unless you state otherwise. See [Licence](license.md).
