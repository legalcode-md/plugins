# Legalcode Authenticated Codex Plugin

Authenticated Legalcode plugin bundle for Codex.

Includes:

- Authenticated Legalcode MCP endpoint: `https://mcppro.legalcode.md/mcp`
- 50 public Legalcode skills for setup, source search, legal work orchestration, contract workflows, privacy, compliance, corporate transactions, litigation chronology, and tabular review
- Pro CLI install and login helper at `scripts/install-legalcode-cli.sh`

This variant includes the same public skills as `legalcode-codex`; the difference is the authenticated MCP endpoint and Pro CLI helper.

The CLI requires a Legalcode Pro account. The helper installs the CLI from npm and starts OAuth login:

```bash
scripts/install-legalcode-cli.sh
```

The `legalcode` npm package must be published before external users can install
the CLI this way.
