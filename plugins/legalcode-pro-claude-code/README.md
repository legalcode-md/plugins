# Legalcode Authenticated Claude Code Plugin

Authenticated Legalcode plugin bundle for Claude Code.

Includes:

- Authenticated Legalcode MCP endpoint: `https://mcppro.legalcode.md/mcp`
- 50 public Legalcode skills for setup, source search, legal work orchestration, contract workflows, privacy, compliance, corporate transactions, litigation chronology, and tabular review
- Pro CLI install and login helper at `scripts/install-legalcode-cli.sh`

Install from the marketplace after this repo is public:

```text
/plugin marketplace add legalcode-md/plugins
/plugin install legalcode-pro-claude-code@legalcode
```

This variant includes the same public skills as `legalcode-claude-code`; the difference is the authenticated MCP endpoint and Pro CLI helper.

The CLI requires a Legalcode Pro account. The helper installs the CLI from npm and starts OAuth login:

```bash
scripts/install-legalcode-cli.sh
```

The `legalcode` npm package must be published before external users can install
the CLI this way.
