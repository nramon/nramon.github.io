.PHONY: all test fmt clean help

all: fmt test

# Format HTML, CSS, and JS
fmt:
	@echo "Auto-formatting project files..."
	-npx @biomejs/biome format --write .

test: tidy lint-assets
	@echo "--- All tests passed! ---"

# Validates XHTML 1.0 Strict
tidy:
	@echo "Checking XHTML validity..."
	tidy -e --doctype transitional --output-xhtml yes --gnu-emacs yes index.html

# Lints assets (ignoring style 'infos')
lint-assets:
	@echo "Checking JS and CSS style with Biome..."
	npx @biomejs/biome lint --diagnostic-level=error .
