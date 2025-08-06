# Makefile for LaTeX Resume Templates
# Usage: make [target]

# Default target
.PHONY: all clean help ml modern classic creative academic

# Default resume to compile
DEFAULT_RESUME = ml_engineer_resume

# Default target - compile the ML engineer resume
all: $(DEFAULT_RESUME)

# Individual resume targets
ml: ml_engineer_resume
modern: modern_resume
classic: classic_resume
creative: creative_resume
academic: academic_resume

# Pattern rule for compiling LaTeX files
%_resume: %_resume.tex
	@echo "🚀 Compiling $<..."
	@pdflatex $< > /dev/null 2>&1
	@if [ -f $@.pdf ]; then \
		echo "✅ Success: $@.pdf created!"; \
		echo "📊 File size: $$(ls -lh $@.pdf | awk '{print $$5}')"; \
		rm -f $@.aux $@.log $@.out; \
		echo "🧹 Cleaned up auxiliary files"; \
		if command -v code >/dev/null 2>&1; then \
			echo "🔍 Opening PDF in VSCode..."; \
			code $@.pdf; \
		elif command -v open >/dev/null 2>&1; then \
			echo "🔍 Opening PDF..."; \
			open $@.pdf; \
		fi; \
	else \
		echo "❌ Error: Failed to create PDF"; \
		exit 1; \
	fi

# Clean auxiliary files
clean:
	@echo "🧹 Cleaning auxiliary files..."
	@rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz
	@echo "✅ Cleanup complete"

# Clean everything including PDFs
clean-all: clean
	@echo "🗑️  Removing all PDF files..."
	@rm -f *.pdf
	@echo "✅ All files cleaned"

# Show help
help:
	@echo "📋 Available targets:"
	@echo "  make          - Compile ML engineer resume (default)"
	@echo "  make ml       - Compile ML engineer resume"
	@echo "  make modern   - Compile modern resume"
	@echo "  make classic  - Compile classic resume"
	@echo "  make creative - Compile creative resume"
	@echo "  make academic - Compile academic resume"
	@echo "  make clean    - Remove auxiliary files"
	@echo "  make clean-all- Remove all generated files"
	@echo "  make help     - Show this help message"
