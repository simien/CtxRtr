# docs/

This directory contains comprehensive documentation for the CtxRtr project, organized by category to make it easy to find and maintain. Documentation focuses on **environment optimization** and **environment management** tools.

## ■ Directory Structure

```
docs/
├── README.md                                    # This file - main documentation index
├── SOURCES_OF_TRUTH.md                          # Central definition of contact info, config, and structure
├── guides/                                      # Step-by-step tutorials and guides
├── incoming/                                    # Drop zone for new documentation (sanitized)
├── standards/                                   # Coding, naming, and documentation standards
└── templates/                                   # Reusable document templates

```

## ■ Sources of Truth

*   **[SOURCES_OF_TRUTH.md](./SOURCES_OF_TRUTH.md)**: The master document containing:
    *   **Contact Information**: Centralized author and project details.
    *   **Configuration Maps**: Where to find variable definitions.
    *   **Directory Authority**: What each folder represents.
    *   **Prompt System Index**: How to use the AI interaction layer.

## ☐ Documentation Categories

### ◆ Guides (`guides/`)

- **Environment Optimization** - Comprehensive optimization strategies for your Mac
- **Cursor/VS Code Settings** - IDE configuration and sync
- **Development Workflows** - Best practices and procedures

### ■ Standards (`standards/`)

- **ASCII Style Guide** - Visual elements and art
- **Naming Guidelines** - File and directory conventions
- **Unified Style System** - Comprehensive design standards
- **Coding Standards** - Best practices for scripts

### ■ Contextual Systems (`guides/prompt-system-overview.md`)

- **Prompt System Overview** - Comprehensive prompt management documentation
- **Router Architecture** - Semantic prompt routing and discovery
- **Quality Control** - Validation and analytics systems

## ▶ Quick Navigation

### For New Users
1. **Start with** `guides/computer-optimization-quick-reference.md` for environment optimization
2. **Check** `standards/` for project conventions

### For Developers
1. **Check** `standards/` for coding standards
2. **Use** the prompt system for contextual automation

## ☐ Usage Examples

### PDF Conversion Workflow

```bash
# Add PDF to incoming directory
cp document.pdf docs/incoming/

# Convert to markdown
./ops/backup/pdf-to-markdown-converter.sh convert docs/incoming/document.pdf

# Check conversion status
./ops/backup/pdf-to-markdown-converter.sh dashboard
```

### System Optimization

```bash
# Apply optimization settings
./scripts/sync-cursor-settings.sh

# Run health checks
./ops/monitoring/swap-ssd-health.sh

# Check system performance
./metrics/comprehensive-dashboard.sh status
```

### Documentation Updates

```bash
# Update optimization documentation
./metrics/system-metrics-tracker.sh compare

# Review documentation structure
find docs/ -name "*.md" -type f
```

### Prompt System Management

```bash
# Run prompt analytics
./scripts/analyze-prompts.sh

# Validate all prompts
./scripts/validate-prompts.sh

# Use prompt router
./ops/run-prompt.sh "diagnose ci"

# Enhanced router with logging
./ops/run-prompt.sh diagnose-ci

# Version management tools
./scripts/audit-prompts.sh --dry-run
./scripts/audit-prompts.sh --archive
```

## ■ Integration

### Pre-Release Workflow
Documentation is automatically sanitized during pre-release to ensure quality and security:

```bash
# Sanitize documentation
./scripts/pre-release-sanitizer.sh --fix

# Verify sanitization
./scripts/pre-release-sanitizer.sh --dry-run

# Review changes
git diff docs/
```

### Security Considerations
- All documentation is sanitized before release
- Personal information is removed automatically
- Paths are converted to relative references
- Examples are made generic and reusable

## ↗ Maintenance

### Regular Tasks
- Update optimization documentation monthly
- Review PDF conversion documentation quarterly
- Sanitize documentation before releases
- Update setup guides as needed

### Documentation Standards
- Use clear, concise language
- Include practical examples
- Provide step-by-step instructions
- Include troubleshooting sections
- Follow markdown best practices

## ■ Related Files

### Configuration
- `config/ide-settings.json`: Cursor IDE settings
- `ops/templates/`: Configuration templates

### Scripts
- `ops/backup/pdf-to-markdown-converter.sh`: PDF conversion
- `scripts/pre-release-sanitizer.sh`: Documentation sanitization
- `scripts/sync-cursor-settings.sh`: Settings synchronization

### Metrics
- `metrics/pdf-processing-dashboard.md`: PDF conversion tracking
- `metrics/comprehensive-dashboard.sh`: System performance

---

**Maintainer:** simien

