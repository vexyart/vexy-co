# vexy-co

`vexy-co` is the umbrella repository for the Vexy tools that work with large language models. Its GitHub description is "Tools around Large Language Model".

The repository itself holds no code yet. It contains a README, the Apache License 2.0 and a `.gitignore`, and it is tagged `v1.0.0`. The working tools live in their own repositories and are documented on their own sites.

## The tools

| Tool | What it does | Install | Documentation |
| --- | --- | --- | --- |
| `vexy-co-model-catalog` | Downloads the model lists of 40 AI providers and writes them as sorted JSON and plain-text files. Command: `vmc`. | From GitHub; not on PyPI yet | [vexy.dev/vexy-co-model-catalog](https://vexy.dev/vexy-co-model-catalog/) |
| `vexy-overnight` | Starts Claude Code, Codex and Gemini CLI, hands a finished session over to the next assistant, and keeps instruction files such as `CLAUDE.md` and `AGENTS.md` in sync. Commands: `vomgr`, `vocl`, `voco`, `voge`, `version-bump`. | `pip install vexy-overnight` | [vexy.dev/vexy-overnight](https://vexy.dev/vexy-overnight/) |

[Related projects](related-projects.md) describes both in more detail and shows how they fit together.

## On this site

| Page | Content |
| --- | --- |
| [Related projects](related-projects.md) | The LLM tools in the Vexy family, with a short walk-through of each |
| [Repository contents](repository.md) | What is in this repository, file by file |
| [Licence](license.md) | What the Apache License 2.0 allows and asks of you |
| [Documentation build](documentation.md) | How this site is built and published |
| [Contributing](contributing.md) | How to propose changes to this repository and its documentation |
| [Changelog](changelog.md) | The history of this repository |
