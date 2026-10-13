# Related projects

Two Vexy repositories contain working tools for large language models. Each has its own repository, release cycle and documentation site. This page summarises what each does, so you can pick the one you need.

## vexy-co-model-catalog

Repository: [vexyart/vexy-co-model-catalog](https://github.com/vexyart/vexy-co-model-catalog) · Documentation: [vexy.dev/vexy-co-model-catalog](https://vexy.dev/vexy-co-model-catalog/)

`vexy-co-model-catalog` answers the question "which models does each provider offer today?". It has a fixed table of 40 providers, including OpenAI, Anthropic, Groq, Mistral, OpenRouter and Together AI. For each provider the table names the API type, the environment variable that holds the API key and the variable that holds the base URL.

What goes in and what comes out:

1. You export a provider's API key, for example `GROQ_API_KEY`.
2. You run `vmc fetch groq`.
3. The tool requests `<base URL>/models`, sorts the response by model ID, and writes two files into the current directory:
    - `config/json/models_groq.json`, the full response;
    - `config/txt/models_groq.txt`, one model ID per line.
4. It records the result in `models/extra/failed_providers.json`, so later runs can skip providers that keep failing.

Because the output is sorted, two runs against an unchanged catalog produce identical files, and a `git diff` shows exactly which models appeared or disappeared.

The package also offers a Python API (`ModelFetcher`, `StorageManager`, `ProviderConfig`) and replaces an older single-file script, `dump_models.py`, keeping its file names.

## vexy-overnight

Repository: [vexyart/vexy-overnight](https://github.com/vexyart/vexy-overnight) · Documentation: [vexy.dev/vexy-overnight](https://vexy.dev/vexy-overnight/) · PyPI: `vexy-overnight`

`vexy-overnight` drives the coding assistants themselves. It has three jobs.

**Starting assistants.** `vocl`, `voco` and `voge` start Claude Code, Codex and Gemini CLI with a fixed set of flags. These flags turn off the assistants' permission and sandbox checks, so read the documentation before you use them.

**Handing over between assistants.** `vomgr install` writes hook scripts into `~/.claude/hooks/` and `~/.codex/`, and `vomgr enable claude` registers one as Claude's `Stop` hook. When Claude stops, the hook:

1. reads `~/.vexy-overnight/settings.toml`, where Claude hands over to Codex by default;
2. builds a prompt from up to five open `- [ ]` items in the project's `TODO.md`;
3. opens a terminal that starts Codex in the same project with that prompt.

Codex hands back to Claude in the same way.

**Keeping instruction files in sync.** `vomgr rules --sync` finds every `CLAUDE.md`, `AGENTS.md`, `GEMINI.md`, `QWEN.md`, `LLXPRT.md` and `.cursorrules` below the current directory and links the copies of each name to the most recently changed one.

## How they fit together

The two tools do not depend on each other. `vexy-co-model-catalog` tells you which model IDs a provider accepts; `vexy-overnight` starts the assistants that use those models. Both are written in Python, both are command-line tools built with [Python Fire](https://github.com/google/python-fire), and both are versioned from git tags.

| | `vexy-co-model-catalog` | `vexy-overnight` |
| --- | --- | --- |
| Main command | `vmc` | `vomgr` |
| Talks to | Provider HTTP APIs | Locally installed assistant CLIs |
| Writes to | The current directory | `~/.claude`, `~/.codex`, `~/.gemini`, `~/.vexy-overnight` |
| Needs API keys | Yes, one per provider (except `litellm`) | No; the assistants handle their own login |
| Python | 3.10 or newer | 3.10 or newer |
