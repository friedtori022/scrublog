# scrublog

A tiny CLI to clean, rotate and archive old log files

## Installation

```bash
pip install -r requirements.txt
python -m logwash --help
```

## Examples

```bash
# show what would be cleaned, change nothing
logwash ./logs --older-than 30 --dry-run

# archive logs older than 30 days
logwash ./logs --older-than 30 --archive ./backup
```

## Highlights

- Dry-run mode shows what would happen, touches nothing
- Scan directories for log files by glob pattern
- Exit codes friendly for cron and CI
- Archive matched logs into a timestamped .tar.gz
- Filter by age (--older-than) or size (--larger-than)

## Project structure

```text
├── .github/
│   ├── ISSUE_TEMPLATE/
│   │   └── bug_report.md
│   ├── workflows/
│   │   └── ci.yml
│   └── dependabot.yml
├── docs/
│   ├── configuration.md
│   ├── development.md
│   ├── faq.md
│   └── usage.md
├── examples/
│   └── quickstart.md
├── logwash/
│   ├── __init__.py
│   ├── __main__.py
│   ├── cli.py
│   └── errors.py
├── tests/
│   └── test_cli.py
├── .gitignore
├── CHANGELOG.md
├── Makefile
├── SECURITY.md
├── pyproject.toml
└── requirements.txt
```

## Development

```bash
python -m venv .venv && source .venv/bin/activate
pip install -r requirements.txt
python -m pytest -q
```
