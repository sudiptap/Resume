# LaTeX Resume Templates Setup Instructions

## Virtual Environment Setup

A Python virtual environment has been created and configured with useful dependencies for working with LaTeX documents and resume optimization.

### Activating the Virtual Environment

To activate the virtual environment:

```bash
source latex_env/bin/activate
```

To deactivate when done:

```bash
deactivate
```

### Installed Dependencies

The following Python packages have been installed in the virtual environment:

#### Core LaTeX Support
- **pygments** - Syntax highlighting for LaTeX documents
- **pandoc** - Document format conversion utilities

#### PDF Processing
- **PyPDF2** - PDF manipulation and processing
- **nbconvert** - Convert Jupyter notebooks to LaTeX

#### Data Analysis & Visualization
- **pandas** - Data manipulation and analysis
- **numpy** - Numerical computing
- **matplotlib** - Plotting and visualization
- **seaborn** - Statistical data visualization

#### Web Scraping & Research
- **requests** - HTTP library for web requests
- **beautifulsoup4** - HTML/XML parsing for web scraping

### Use Cases for the Python Environment

1. **Resume Optimization**: Use pandas to analyze job posting data and optimize resume keywords
2. **Data Visualization**: Create charts and graphs to include in resumes or cover letters
3. **Document Processing**: Convert between different document formats
4. **Job Market Research**: Scrape job postings to understand skill requirements
5. **PDF Manipulation**: Merge, split, or modify PDF resumes

### Example Usage

```python
# Activate the environment first
# source latex_env/bin/activate

import pandas as pd
import requests
from bs4 import BeautifulSoup
import matplotlib.pyplot as plt

# Example: Analyze job posting keywords
job_keywords = ['Python', 'Machine Learning', 'AWS', 'Docker', 'Kubernetes']
# ... analyze and optimize resume content
```

## LaTeX Compilation

The LaTeX templates can be compiled using standard LaTeX tools:

```bash
# Compile a resume template
pdflatex ml_engineer_resume.tex

# For templates with bibliography or cross-references, run multiple times:
pdflatex your_resume.tex
pdflatex your_resume.tex
```

## Next Steps

1. Activate the virtual environment: `source latex_env/bin/activate`
2. Choose and customize one of the resume templates
3. Use the Python tools for resume optimization and research
4. Compile your LaTeX resume to PDF
5. Deactivate the environment when done: `deactivate`
