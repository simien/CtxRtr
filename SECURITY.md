# Security

CtxRtr is a personal project maintained by one person. There is no security
team and no service-level agreement, but reports are taken seriously and
looked at promptly.

## Reporting a vulnerability

Use [GitHub Security Advisories](https://github.com/simien/CtxRtr/security/advisories/new)
to report a vulnerability privately. Do not open a public issue for a
security problem.

Include what you can:

- What the issue is and where it lives (file, script, or config)
- Steps to reproduce it
- What you'd expect to happen versus what actually happens

## Supported versions

Only the current `production` branch is supported. There are no maintained
older versions.

## Scope

This project is a set of local shell scripts and prompt-router tooling that
runs on one person's machine. It does not handle other users' data, run a
public service, or expose a network endpoint by default. Most findings will
be about script safety (path handling, input validation, accidental
overwrites) rather than classic web vulnerabilities.

See [`security/policies/security.md`](security/policies/security.md) for
the project's internal security practices (what the scripts do to protect
against these issues, and known limitations).
