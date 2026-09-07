# Security Policy

This is a personal, single-maintainer project. There is no security team, no
SLA, and no PGP key. For how to report a vulnerability, see the canonical
policy at [`SECURITY.md`](../../SECURITY.md) in the repo root.

## What this project actually does to stay secure

- **Input validation:** scripts validate arguments and paths before acting on them.
- **No secrets in the repo:** `.gitignore` excludes real config and credential files; `scripts/pre-release-sanitizer.sh` scans for accidentally-committed secrets, personal paths, and dangerous commands (`sudo`, `rm -rf`, `chmod 777`) before a release.
- **Least-surprise shell scripts:** commands are parameterized rather than built from unsanitized string interpolation, and error messages avoid leaking system details.
- **PDF processing:** conversion uses standard, non-executing tools; no PDF content is ever run as code.

## Known limitations

- This is local tooling for one machine, not a hardened multi-user service. File permissions rely on normal macOS user-account boundaries, not anything project-specific.
- There's no automated dependency-vulnerability scanning; Homebrew and system packages are updated manually (`ops/cleanup/brew-cleanup.sh` helps with this).
- Security review happens when the maintainer notices something, not on a fixed schedule.

## Quick checks

```bash
# Dry-run the pre-release sanitizer
./scripts/pre-release-sanitizer.sh --dry-run

# Manual grep for anything that looks like a secret
grep -r "api_key\|password\|token\|secret" . --exclude-dir=.git
```
