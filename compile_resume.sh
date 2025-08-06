#!/bin/bash

# Resume Compilation Script
# This script compiles LaTeX resume templates to PDF

echo "🚀 Resume Compilation Script"
echo "=============================="

# Function to compile a LaTeX file
compile_latex() {
    local tex_file="$1"
    local base_name="${tex_file%.tex}"
    
    echo "📄 Compiling: $tex_file"
    
    # Check if file exists
    if [ ! -f "$tex_file" ]; then
        echo "❌ Error: File $tex_file not found!"
        return 1
    fi
    
    # Compile LaTeX to PDF
    pdflatex "$tex_file"
    
    # Check if PDF was created successfully
    if [ -f "${base_name}.pdf" ]; then
        echo "✅ Success: ${base_name}.pdf created!"
        echo "📊 File size: $(ls -lh ${base_name}.pdf | awk '{print $5}')"
        
        # Clean up auxiliary files
        rm -f "${base_name}.aux" "${base_name}.log" "${base_name}.out"
        echo "🧹 Cleaned up auxiliary files"
        
        # Open PDF (macOS)
        if command -v open &> /dev/null; then
            echo "🔍 Opening PDF..."
            open "${base_name}.pdf"
        fi
        
        return 0
    else
        echo "❌ Error: Failed to create PDF"
        return 1
    fi
}

# Main script logic
if [ $# -eq 0 ]; then
    echo "Available resume templates:"
    echo "  • modern_resume.tex"
    echo "  • classic_resume.tex" 
    echo "  • creative_resume.tex"
    echo "  • academic_resume.tex"
    echo "  • ml_engineer_resume.tex"
    echo ""
    echo "Usage: $0 <template_name.tex>"
    echo "Example: $0 ml_engineer_resume.tex"
    exit 1
fi

# Compile the specified template
compile_latex "$1"

echo ""
echo "🎉 Done! Your resume PDF is ready."
echo "💡 Tip: Edit the .tex file to customize with your information, then run this script again."
