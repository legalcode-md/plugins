# Legalcode Authenticated Codex Plugin

Authenticated Legalcode plugin bundle for Codex.

Includes:

- Authenticated Legalcode MCP endpoint: `https://mcppro.legalcode.md/mcp`
- 50 public Legalcode skills for setup, source search, legal work orchestration, contract workflows, privacy, compliance, corporate transactions, litigation chronology, and tabular review
- CLI install helper at `scripts/install-legalcode-cli.sh`

This variant includes the same public skills as `legalcode-codex`; the difference is the authenticated MCP endpoint and CLI helper.

The CLI helper runs:

```bash
npm install -g legalcode
```

The npm package must be published separately before external users can install the CLI from npm.
