# CtxRtr Naming Guidelines

## ☐ Project Name Standards

### Primary Name: CtxRtr
- **Official Name:** CtxRtr
- **Full Name:** CtxRtr - Contextual Prompt Router
- **Source of Truth:** `README.md` (line 1)
- **Configuration:** `config/project-config.json`

### Usage Guidelines

#### ✓ Correct Usage
- "CtxRtr" (primary name)
- "CtxRtr - Contextual Prompt Router" (full name)
- "CtxRtr project"
- "CtxRtr system"

#### ✗ Incorrect Usage
- "DigitalEnv" or "DgtlEnv" (old names, this project has been renamed twice: DigitalEnv → DgtlEnv → CtxRtr)
- "Digital Environment Management" (the old full name/positioning, before the project was repositioned around the Contextual Prompt Router)
- "ctxrtr" or "CTXRTR" (inconsistent casing; the primary name is always "CtxRtr")

### File Naming Conventions

#### Scripts
- Use lowercase with hyphens: `create-ctxrtr-backup.sh`
- Avoid camelCase or snake_case for script names

#### Directories
- Use lowercase with hyphens: `ctxrtr-config`
- Keep existing directory structure

#### Configuration
- Use kebab-case: `ctxrtr-settings.json`
- Maintain consistency with existing patterns

### Implementation

#### Shell Scripts
```bash
# Get project name from config
PROJECT_NAME=$(jq -r '.project.name' config/project-config.json)
```

#### Documentation
```markdown
# **CtxRtr** - Local-First Agentic Tooling
```

### Validation

There used to be a `scripts/update-project-name.sh`, but it was legacy scaffolding from the DigitalEnv → DgtlEnv rename, self-contradictory by the time of the CtxRtr rename, and never actually run. It was removed rather than fixed. Check for stray old-name references directly instead:
```bash
git grep -il "dgtlenv\|digitalenv"
```

This should check for:
- Remaining "DgtlEnv" or "DigitalEnv" references
- Consistent "CtxRtr" usage
- Proper casing and formatting

### Migration Notes

- All "DgtlEnv" and "DigitalEnv" references should be updated to "CtxRtr", except genuinely historical/dated records (e.g. `CHANGELOG.md` entries, `docs/standards/style-system-implementation-summary.md`) describing what a past rename actually changed at the time
- Script names should use lowercase with hyphens
- Configuration files should reference the centralized config
- README.md serves as the authoritative source of truth
