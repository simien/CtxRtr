# Security Directory

Security policy and practices for the CtxRtr project.

## ■ Contents

- `policies/security.md` - what the project protects against, what it doesn't, and known limitations (see [`SECURITY.md`](../SECURITY.md) in the repo root for how to report a vulnerability)

## What actually runs

- CI runs a basic security check on every push (`.github/workflows/ci.yml`'s `security` job): greps for likely hardcoded secrets and dangerous shell patterns (`rm -rf`, `chmod 777`, `sudo`).
- `scripts/pre-release-sanitizer.sh` scans for secrets, personal paths, and dangerous commands before a release.

## ▶ Quick Start

```bash
# Read the policy
cat policies/security.md

# Dry-run the pre-release sanitizer
../scripts/pre-release-sanitizer.sh --dry-run

# Manual grep for anything that looks like a secret
grep -r "api_key\|password\|token\|secret" . --exclude-dir=.git
```
