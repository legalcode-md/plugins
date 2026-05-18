# Legalcode Plugins

Public plugin distribution for Legalcode.

Legalcode gives AI agents primary legal source lookup and reusable legal workflows. This repository ships public plugin bundles for Codex and Claude Code, including public and authenticated MCP endpoint variants.

Website: https://legalcode.md

## Plugins

| Plugin | Target | MCP endpoint | Skills | CLI |
|---|---|---|---:|---|
| `legalcode-codex` | Codex | Public MCP | 50 | No |
| `legalcode-claude-code` | Claude Code | Public MCP | 50 | No |
| `legalcode-pro-codex` | Codex | Authenticated MCP | 50 | Pro auth required |
| `legalcode-pro-claude-code` | Claude Code | Authenticated MCP | 50 | Pro auth required |

## Included Public Skills

Each plugin includes the same 50 public Legalcode skills. The authenticated variants only change the MCP endpoint and optional CLI helper; they do not hide or unlock extra plugin skills. Subscriber-only skills are delivered through the Legalcode Pro dashboard, not this public plugin repository.

The public bundle covers MCP setup, legal source search, legal work orchestration workflows, contract review and drafting, privacy and compliance, corporate transactions, citation-backed tabular review, and case timeline generation. Supporting `references/`, `scripts/`, templates, and agent files are copied alongside each skill where used.

## Public vs Pro

Public MCP:

```text
https://mcp.legalcode.md/mcp
```

Use public MCP for anonymous laws and case law lookup. It is rate limited and returns the top 5 results per query.

Authenticated MCP:

```text
https://mcppro.legalcode.md/mcp
```

Use authenticated MCP for stronger search, AND/OR search, up to 20 results per query, guidance, agreements, downloads, and higher-throughput access.

## Codex Install

Codex uses the repo-local marketplace manifest:

```text
.agents/plugins/marketplace.json
```

Free plugin path:

```text
./plugins/legalcode-codex
```

Authenticated endpoint plugin path:

```text
./plugins/legalcode-pro-codex
```

## Claude Code Install

```text
/plugin marketplace add legalcode-md/plugins
/plugin install legalcode-claude-code@legalcode
```

For the authenticated endpoint variant:

```text
/plugin install legalcode-pro-claude-code@legalcode
```

## Pro CLI Helper

The CLI is only for Legalcode Pro users and requires OAuth login. The authenticated
endpoint variants include:

```text
scripts/install-legalcode-cli.sh
```

That helper installs the CLI from npm and starts login:

```bash
npm install -g legalcode
legalcode login
```

The `legalcode` npm package must be published before external users can install
the CLI this way.

## Notes

Your agent keeps your documents and matter context. Legalcode provides source lookup through MCP.

## Legal Disclaimer

These plugins, skills, and support files are provided as-is as agent
instructions and configuration. They are not legal advice and do not create an
attorney-client relationship. Legalcode is not responsible for how any agent,
model, application, workflow, or user installs, configures, applies, interprets,
or relies on these materials, or for any output, recommendation, document,
citation, filing, decision, omission, or other result generated from them.

See [LICENSE.md](LICENSE.md) for the full license and disclaimer.
