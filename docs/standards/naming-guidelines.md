# CtxRtr Naming Guidelines

## 📋 Project Name Standards

### Primary Name: CtxRtr
- **Official Name:** CtxRtr
- **Full Name:** CtxRtr - Digital Environment Management
- **Source of Truth:** `README.md` (line 1)
- **Configuration:** `config/project-config.json`

### Usage Guidelines

#### ✅ Correct Usage
- "CtxRtr" (primary name)
- "CtxRtr - Digital Environment Management" (full name)
- "CtxRtr project"
- "CtxRtr system"

#### ❌ Incorrect Usage
- "DigitalEnv" (old name)
- "Digital Environment" (without CtxRtr)
- "CtxRtr" (inconsistent casing)

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
# **CtxRtr** - Digital Environment Management
```

### Validation

Run the naming validation script:
```bash
./scripts/update-project-name.sh validate
```

This will check for:
- Remaining "DigitalEnv" references
- Consistent "CtxRtr" usage
- Proper casing and formatting

### Migration Notes

- All "DigitalEnv" references should be updated to "CtxRtr"
- Script names should use lowercase with hyphens
- Configuration files should reference the centralized config
- README.md serves as the authoritative source of truth
