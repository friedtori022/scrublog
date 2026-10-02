.PHONY: test lint run

test:
	python -m pytest -q

lint:
	python -m compileall -q .

run:
	logwash ./logs --older-than 30 --dry-run
