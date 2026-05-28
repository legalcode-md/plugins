# Legalcode Pro Plugins

Pro plugin distribution for Legalcode.

Legalcode gives AI agents primary legal source lookup and reusable legal workflows. This repository ships the Pro plugin bundles for Codex and Claude Code, backed by Legalcode's authenticated MCP endpoint and including 52 curated legal skills.

Website: https://legalcode.md

## Plugins

| Plugin | Target | MCP endpoint | Skills | CLI |
|---|---|---|---:|---|
| `legalcode-pro-codex` | Codex | Authenticated MCP | 52 | Pro auth required |
| `legalcode-pro-claude-code` | Claude Code | Authenticated MCP | 52 | Pro auth required |

Both plugins ship the same 52 skills and point at the authenticated Legalcode MCP. Free / public-MCP plugin variants are not distributed from this repository — installing any plugin here gives you the Pro tier.

## Authenticated MCP endpoint

```text
https://mcppro.legalcode.md/mcp
```

Use this endpoint for stronger search, AND/OR search, up to 20 results per query, guidance, agreements, downloads, the pre-law and case-law trace surfaces that the Icelandic gold-plating skill depends on, and higher-throughput authenticated access. On first invocation Cowork or Claude Code will prompt you to authorise the connection (OAuth).

## Included Skills

All 52 skills ship in both Pro variants. The skill set covers:

- **Foundation**: MCP setup, public/authenticated source search, legal work orchestration workflows
- **Contracts**: review, drafting, comparison, redlining, playbook building, NDA triage, SaaS / MSA / DPA / services / terms-of-service drafters, indemnification analysis, limitation-of-liability review, SAFE review, term sheet analysis
- **Privacy & data protection**: DPIA generator, RoPA generator, cookie compliance audit, DSAR workflow builder, cross-border transfer assessment, privacy policy drafter, GDPR legal-basis assessment, vendor privacy assessment
- **Compliance**: NIS2, DORA, AML/KYC, sanctions / export control screening, EU AI Act high-risk, AI governance framework builder, AI provisions reviewer
- **Corporate transactions**: due diligence report, third-party due diligence, startup formation
- **Regulatory & policy**: EU directive analyzer, regulatory change tracker, policy gap analysis, obligation tracker
- **Document workflow**: document QA, tabular review (with orchestrator), statute analysis, case timeline (builder + generator), legal memorandum
- **Icelandic legal specialty** (Pro-only, requires authenticated MCP):
  - `legalcode-anti-gold-plating-is` — Icelandic gold-plating (gullhúðun) analysis for EEA-implementation acts. Section-by-section detection of *innleiðing umfram lágmark*, traced through the Alþingi pre-law record (frumvarp, greinargerð, umsagnir, nefndarálit, breytingartillögur) with per-finding impact retrieval. Applies the Davidson Five + Pattern G30 framework, runs Iron Law 7 counter-argument stress tests on every HIGH/CRITICAL finding, and produces a full *Gullhúðunarskýrsla* plus an optional remediation *breytingafrumvarp* — both rendered as standalone Word documents.
  - `legalcode-docx-render` — Self-contained DOCX renderer with Icelandic legal typography (Arial 10pt body, sized headings, 1-inch margins), thin horizontal borders between table rows, and a mandatory standalone-document audit so the output opens in Word, LibreOffice, or Pages with zero update prompts. Pandoc-backed with a Python post-render helper for table-border injection.

Subscriber-only skills beyond these 52 are delivered through the Legalcode Pro dashboard, not this plugin repository.

## Claude Code install

```text
/plugin marketplace add legalcode-md/plugins
/plugin install legalcode-pro-claude-code@legalcode
```

The plugin auto-registers the authenticated MCP server (`https://mcppro.legalcode.md/mcp`). On first call Claude Code opens an OAuth flow to authorise the connection to your Legalcode Pro account.

## Cowork install

Cowork admins:

```text
Organization Settings → Plugins → Add plugins → GitHub → legalcode-md/plugins
```

Cowork performs an initial sync and lists `legalcode-pro-claude-code` in the **Plugins** tab. Set the installation preference (*available for install*, *auto-installed for new users*, or *required*). For private organization use, enable **Sync automatically** so future repository pushes appear without manual action.

Authentication: on first plugin invocation, members see an OAuth prompt to connect their Legalcode Pro account.

## Codex install

Codex uses the repo-local marketplace manifest:

```text
.agents/plugins/marketplace.json
```

Pro plugin path:

```text
./plugins/legalcode-pro-codex
```

## Pro CLI helper

Both Pro plugins ship a CLI install helper:

```text
scripts/install-legalcode-cli.sh
```

That helper installs the CLI from npm and starts login:

```bash
npm install -g legalcode
legalcode login
```

The `legalcode` npm package must be published for external users to install the CLI this way.

## Notes

Your agent keeps your documents and matter context. Legalcode provides source lookup through the authenticated MCP. Skills in this repository are designed to call `legalcode_search`, `legalcode_trace`, `legalcode_fetch`, `legalcode_analyze`, and `legalcode_discover` against the Pro endpoint — they will degrade gracefully if pointed at the public endpoint but several skills (notably `legalcode-anti-gold-plating-is`) depend on Pro-only trace surfaces.

## Legal disclaimer

These plugins, skills, and support files are provided as-is as agent
instructions and configuration. They are not legal advice and do not create an
attorney-client relationship. Legalcode is not responsible for how any agent,
model, application, workflow, or user installs, configures, applies, interprets,
or relies on these materials, or for any output, recommendation, document,
citation, filing, decision, omission, or other result generated from them.

See [LICENSE.md](LICENSE.md) for the full license and disclaimer.
