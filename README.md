# **CtxRtr** - Local-First Agentic Tooling

> **Personal project** - Disciplined prompt engineering and agentic dev tooling, built and run entirely on a decade-old MacBook Pro.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![macOS](https://img.shields.io/badge/macOS-12.7.6%20Monterey-blue.svg)](https://www.apple.com/macos/)
[![System Status](https://img.shields.io/badge/System%20Status-Optimized-brightgreen.svg)](https://github.com/simien/CtxRtr)

**Device:** MacBook Pro (Retina, 15-inch, Mid 2015) | **OS:** macOS 12.7.6 Monterey

---

## ◆ What is CtxRtr?

**CtxRtr** is two things that turned out to depend on each other. The headline is a **Contextual Prompt Router**: a versioned, validated, and audited prompt library, treated with the same discipline you'd expect from a codebase rather than a folder of text files. The reason it exists at all is the second thing: everything here runs on a **2015 MacBook Pro**, with no cloud compute and no assumption of headroom. Most agentic-dev tooling quietly assumes an unlimited-resource machine. This is what it looks like to build that tooling somewhere resource actually matters, and to monitor the machine closely enough to trust the result.

**[*] Leverage what works well, share how you implement it, and please contribute if you would like to.**

### **Primary Focus: Contextual Prompt Router (PromptOps)**
> **Prompts as a versioned, governed system**, not just a folder of `.md` files

- **Natural-Language Routing** - `./ops/run-prompt.sh "diagnose ci"` instead of remembering exact filenames
- **Version Management** - Semantic versioning with automatic latest-version selection and outdated-version archiving
- **Validation & Auditing** - `validate-prompts.sh`, `audit-prompts.sh`, `analyze-prompts.sh` check template compliance, metadata, and usage before a prompt ships
- **Prompt Chaining** - Run multiple prompts in sequence (`--chain`) for multi-step workflows

### **Supporting Infrastructure: Constrained-Hardware Optimization**
> **Why it matters here**: this tooling has to earn its keep on genuinely limited hardware, so the system has to stay observable

- **System Health Monitoring** - Catches slowdowns and data loss before they happen on aging storage
- **System Cleanup** - Frees up disk space and memory that a newer machine could afford to waste
- **Docker Optimization** - Keeps containerized services from starving everything else running
- **Performance Tracking** - Before/after metrics for every optimization, not just a claim that it worked
- **PDF Management, Release Sanitization, Todo Management** - Housekeeping that keeps the above two systems maintainable

---

## ▶ Quick Start

### Installation
```bash
git clone https://github.com/simien/CtxRtr.git
cd CtxRtr
chmod +x ops/monitoring/swap-ssd-health.sh
./ops/monitoring/swap-ssd-health.sh
# Note: You may be prompted for your password to see detailed SSD health stats
```

### Prompt Router: Start Here
> **The main event**: contextual, validated, versioned prompt routing

```bash
# Natural-language prompt routing
./ops/run-prompt.sh "diagnose ci"
./ops/run-prompt.sh "find bugs"
./ops/run-prompt.sh "create todo"

# Chain multiple prompts in sequence
./ops/run-prompt.sh --chain diagnose-ci generate-report

# Version management, analytics, and validation
./scripts/audit-prompts.sh --dry-run
./scripts/analyze-prompts.sh
./scripts/validate-prompts.sh
```

### Essential Environment Optimization Commands
> **Supporting infrastructure**: keeps the machine trustworthy enough to build on

```bash
# System Health Check (Prevents slowdowns & data loss)
./ops/monitoring/swap-ssd-health.sh

# System Cleanup (Frees up disk space)
./ops/cleanup/brew-cleanup.sh
./ops/cleanup/docker-cleanup.sh

# Docker Optimization (Prevents resource hogging)
./ops/docker/docker-optimize.sh

# Cursor IDE Optimization (Faster performance)
./scripts/sync-cursor-settings.sh

# Performance Tracking (Shows improvements)
./metrics/system-metrics-tracker.sh baseline
./metrics/system-metrics-tracker.sh current
./metrics/system-metrics-tracker.sh compare

# Real-time System Dashboard
./metrics/comprehensive-dashboard.sh dashboard
```

### Environment Management Commands
> **Housekeeping** - For managing the development environment

```bash
# PDF Management
./ops/backup/pdf-to-markdown-converter.sh all
./ops/backup/pdf-watcher.sh watch

# Security & Release Management
./scripts/pre-release-sanitizer.sh --dry-run
./scripts/create-release.sh

# Todo Management & Quality Control
./scripts/enforce-organization-standards.sh
./scripts/migrate-todo-items.sh

# Comprehensive Testing
./tests/quick-test.sh
./tests/quick-test.sh --non-interactive
```

---

## ■ Contextual Prompt Router: PromptOps in Detail

> **Prompts treated like code**: versioned, validated, audited, and measured, not just written down

### Prompt Router Features
- **Natural Language Support** - Type `"diagnose ci"` instead of remembering exact filenames
- **Fuzzy Matching** - Contextual prompt discovery with semantic suggestions
- **Context Injection** - Dynamic file inclusion with `{{include:path/to/file}}`
- **Version Management** - Automatic latest version selection with semantic versioning
- **Quality Control** - Comprehensive validation and analytics
- **Automated Version Management** - Outdated version detection and archiving

### Sample Prompt Analytics
> **Illustrative snapshot**: captured 2025-07-28, kept here to show what `analyze-prompts.sh` reports. Run it yourself for current numbers

```
■ Prompt Structure Analysis
==========================
Total prompts: 24 (active)
Archived prompts: 1 (properly managed)
Total categories: 5

Prompts by category:
  code-analysis               5 (20%)
  documentation-generation    5 (20%)
  meta-prompts                3 (12%)
  system-optimization         5 (20%)
  workflow-management         6 (25%)

↗ Quality Metrics
=================
Template Compliance: 100% ✓
Metadata Completeness: 100% ✓
Version Consistency: 100% ✓
File Naming Standards: 100% ✓
Validation Success Rate: 100% ✓
Outdated Version Management: 100% ✓

■ Version Management
====================
Active prompts: 24 (clean, current versions only)
Archived prompts: 1 (outdated version)
Outdated versions: 0 (all handled)
Archive system: 100% operational
```

**[#] See [prompts/README.md](prompts/README.md) for detailed prompt system documentation**

**[#] See [docs/guides/prompt-system-overview.md](docs/guides/prompt-system-overview.md) for comprehensive system architecture and advanced features**

---

## ■ Current System Status

> **System Health Dashboard** - Real-time performance metrics

```
■ System Health Dashboard
==========================
Memory Usage: 40% ✓ (Target: < 80%)
██████████░░░░░░░░░░░░░░░░░░░░
✓ Memory Status: Excellent

CPU Usage: 22% ✓ (Target: < 70%)
████████░░░░░░░░░░░░░░░░░░░░░░
✓ CPU Status: Optimal

Disk Usage: 21% ✓ (Target: < 85%)
██████░░░░░░░░░░░░░░░░░░░░░░░░
✓ Disk Status: Healthy

↗ Performance Summary
=====================
✓ All systems operating within optimal ranges
✓ No performance bottlenecks detected
✓ System optimization targets achieved
```

**[#] See [docs/guides/computer-optimization-quick-reference.md](docs/guides/computer-optimization-quick-reference.md) for detailed environment optimization guide**

---

## ☐ Available Scripts

> **Comprehensive tooling** - Sophisticated scripts for environment optimization and management

### Contextual Prompt Router (PromptOps)
> **The main system**: routing, versioning, validation, analytics

- **`./ops/run-prompt.sh`** - Natural-language prompt router with chaining support
- **`./scripts/validate-prompts.sh`** - Template compliance and metadata validation
- **`./scripts/analyze-prompts.sh`** - Usage pattern and complexity analytics
- **`./scripts/audit-prompts.sh`** - Outdated-version detection and archiving

### Environment Optimization (System Performance)
> **Performance refinement** - Tools that directly improve your Mac's performance

#### System Health & Monitoring
- **`./ops/monitoring/swap-ssd-health.sh`** - System health check (prevents slowdowns & data loss)
- **`./ops/monitoring/top-hogs.sh`** - Resource monitoring (identifies performance bottlenecks)

#### System Cleanup & Maintenance
- **`./ops/cleanup/brew-cleanup.sh`** - Homebrew cleanup (frees up disk space)
- **`./ops/cleanup/docker-cleanup.sh`** - Docker cleanup (reduces memory & disk usage)

#### Docker Optimization
- **`./ops/docker/docker-optimize.sh`** - Docker resource management (prevents resource hogging)

#### IDE Performance
- **`./scripts/sync-cursor-settings.sh`** - Cursor IDE optimization (faster performance, reduced memory usage)

#### Performance Tracking
- **`./metrics/system-metrics-tracker.sh`** - Performance tracking (shows before/after improvements)
- **`./metrics/comprehensive-dashboard.sh`** - Visual dashboards (real-time system status)

### Environment Management (Project Tools)
> **Housekeeping** - Tools that help manage the development environment

#### PDF Management
- **`./ops/backup/pdf-to-markdown-converter.sh`** - PDF to markdown conversion (extracts real text via poppler)
- **`./ops/backup/pdf-watcher.sh`** - Automatic file watching
- **`./ops/backup/create-ctxrtr-backup.sh`** - Project backup

#### Security & Release Management
- **`./scripts/pre-release-sanitizer.sh`** - Security sanitization
- **`./scripts/create-release.sh`** - Release management
- **`./scripts/setup-github.sh`** - GitHub repository setup

#### Todo Management & Quality Control
- **`./scripts/migrate-todo-items.sh`** - Automated todo migration with comprehensive reporting
- **`./scripts/enforce-organization-standards.sh`** - Organization standards enforcement

**[#] See [ops/README.md](ops/README.md) for detailed operations documentation**

---

## ↻ Complete Optimization Workflow

> **Sophisticated orchestration** - A refined workflow for comprehensive optimization

```bash
# 1. Capture baseline metrics
./metrics/system-metrics-tracker.sh baseline

# 2. Run optimizations
./ops/monitoring/swap-ssd-health.sh
./ops/cleanup/brew-cleanup.sh
./ops/cleanup/docker-cleanup.sh
./ops/docker/docker-optimize.sh
./scripts/sync-cursor-settings.sh

# 3. Capture current metrics
./metrics/system-metrics-tracker.sh current

# 4. Generate comparison report
./metrics/system-metrics-tracker.sh compare

# 5. View comprehensive dashboard
./metrics/comprehensive-dashboard.sh dashboard
```

**[#] See [docs/guides/computer-optimization-quick-reference.md](docs/guides/computer-optimization-quick-reference.md) for detailed environment optimization guide**

---

## ■ Documentation

> **Comprehensive knowledge base** - Documentation for all aspects of this project

### Contextual Prompt Router
> **Start here**: prompt management and workflow automation

- **[Prompts System](prompts/README.md)** - Structured AI prompts for system optimization
- **[Prompt System Overview](docs/guides/prompt-system-overview.md)** - Full architecture and advanced features
- **[System Optimization Prompts](prompts/categories/system-optimization/)** - Performance tuning and resource management
- **[Meta-Prompts](prompts/categories/meta-prompts/)** - Conversation management and utilities

### Environment Optimization
> **Performance refinement** - Complete guides for system optimization and performance tuning

- **[Environment Optimization Quick Reference](docs/guides/computer-optimization-quick-reference.md)** - Complete optimization guide with cards and workflows
- **[Cursor IDE Optimization](ops/README.md#cursor-ide-performance-optimization-macos)** - IDE performance tuning guide

### Performance & Metrics
> **Performance insights** - Monitoring and analytics systems

- **[Metrics & Monitoring](metrics/README.md)** - Performance tracking and dashboards
- **[Operations Documentation](ops/README.md)** - Environment optimization tools
- **[Scripts Documentation](scripts/README.md)** - Environment management tools
- **[Test Suite](tests/README.md)** - Validation and testing with interactive and automated modes

### Setup & Configuration
> **Configuration management** - Setup guides and development standards

- **[GitHub Setup Guide](docs/setup/github-setup.md)** - Repository configuration
- **[Contributing Guidelines](CONTRIBUTING.md)** - Development standards
- **[Security Policies](security/README.md)** - Security and audit information

---

## ■ Contributing

**[*] Leverage what works well, share how you implement it, and please contribute if you would like to.**

This is an experimental personal project, but I welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

## ■ Security

If you discover a security vulnerability, please report it privately. See our [Security Policy](SECURITY.md) for details.

## ■ License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

## ■ Contact Information

**Name:** CtxRtr Maintainer
**Email:** maintainer@example.com
**Website:** [example.com](https://example.com/)
**GitHub:** [simien](https://github.com/simien)

## ■ Project Structure

### **Core Files**
- `CHANGELOG.md` - Project version history and release notes
- `CONTRIBUTING.md` - Development standards and contribution guidelines
- `SECURITY.md` - Security policies and vulnerability reporting

### **Key Directories**
- `prompts/` - Versioned, validated, audited prompt library (the Contextual Prompt Router)
- `ops/` - Environment optimization tools (monitoring, cleanup, Docker) plus `run-prompt.sh`
- `metrics/` - Performance tracking and analytics dashboards
- `scripts/` - Environment management, prompt validation/analytics, and automation tools
- `docs/` - Comprehensive documentation and guides
- `tests/` - Validation and testing suite
- `config/` - Project configuration and settings
- `security/` - Security policies and audit reports

### **Support Directories**
- `logs/` - Application and system logs
- `examples/` - Usage examples and demonstrations
- `.github/` - GitHub workflows and templates
