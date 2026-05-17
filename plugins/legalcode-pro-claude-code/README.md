# Legalcode Authenticated Claude Code Plugin

Authenticated Legalcode plugin bundle for Claude Code.

Includes:

- Authenticated Legalcode MCP endpoint: `https://mcppro.legalcode.md/mcp`
- 50 public Legalcode skills for setup, source search, legal work orchestration, contract workflows, privacy, compliance, corporate transactions, litigation chronology, and tabular review
- CLI install helper at `scripts/install-legalcode-cli.sh`

Install from the marketplace after this repo is public:

```text
/plugin marketplace add legalcode-md/plugins
/plugin install legalcode-pro-claude-code@legalcode
```

This variant includes the same public skills as `legalcode-claude-code`; the difference is the authenticated MCP endpoint and CLI helper.

The CLI helper runs:

```bash
npm install -g legalcode
```

The npm package must be published separately before external users can install the CLI from npm.
