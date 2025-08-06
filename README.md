# Professional Resume Templates Collection

This repository contains four professional LaTeX resume templates designed for different career paths and preferences. Each template is carefully crafted to provide a clean, professional appearance while being ATS (Applicant Tracking System) friendly.

## Templates Included

### 1. Modern Resume (`modern_resume.tex`)
- **Style**: Clean, minimalist design with subtle formatting
- **Best for**: Software engineers, tech professionals, recent graduates
- **Features**: 
  - ATS-friendly formatting
  - FontAwesome icons for contact information
  - Structured sections for experience, projects, and skills
  - Easy to customize and modify
  - Single-page layout optimized for readability

### 2. Classic Resume (`classic_resume.tex`)
- **Style**: Traditional academic-style using ModernCV package
- **Best for**: Experienced professionals, consultants, traditional industries
- **Features**:
  - Professional ModernCV styling
  - Comprehensive sections including certifications and languages
  - Multi-page support
  - Photo placeholder option
  - Detailed project descriptions with links

### 3. Creative Resume (`creative_resume.tex`)
- **Style**: Modern design with colors, skill bars, and visual elements
- **Best for**: Designers, creative professionals, startups, tech companies
- **Features**:
  - Colorful header with custom color scheme
  - Visual skill bars showing proficiency levels
  - Two-column layout for efficient space usage
  - TikZ graphics for visual appeal
  - Modern typography and spacing

### 4. Academic Resume (`academic_resume.tex`)
- **Style**: Comprehensive academic CV format
- **Best for**: Researchers, professors, PhD candidates, academic positions
- **Features**:
  - Detailed publication lists with reverse chronological numbering
  - Comprehensive sections for grants, teaching, and service
  - Multi-page support with page numbering
  - ORCID and academic website integration
  - Proper academic formatting standards

## Prerequisites

To compile these LaTeX templates, you'll need:

- A LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- The following LaTeX packages (most are included in standard distributions):
  - `fontawesome5` (for icons)
  - `moderncv` (for classic template)
  - `tikz` (for creative template graphics)
  - `etaremune` (for academic template numbering)
  - `hyperref` (for clickable links)
  - `geometry` (for page layout)
  - `enumitem` (for list formatting)

## How to Use

1. **Choose your template** based on your career field and personal preference
2. **Copy the template file** you want to use
3. **Customize the content**:
   - Replace placeholder text with your information
   - Modify sections as needed for your background
   - Adjust colors, fonts, or layout if desired
4. **Compile the LaTeX file** using your preferred LaTeX editor or command line:
   ```bash
   pdflatex your_resume.tex
   ```

## Customization Tips

### For All Templates:
- Replace all placeholder information (names, addresses, emails, etc.)
- Modify section headings to match your background
- Add or remove sections as appropriate
- Ensure all dates and information are current

### Modern Resume:
- Uncomment font options at the top to change typography
- Modify the `\resumeItem` commands to add your specific achievements
- Adjust margins in the geometry settings if needed

### Classic Resume:
- Change the `\moderncvcolor` to blue, green, red, or orange
- Add a professional photo by replacing the `\photo` command
- Modify the `\cventry` commands for your experience

### Creative Resume:
- Customize colors by modifying the `\definecolor` commands
- Adjust skill bar lengths in the `\skillbar` commands (scale of 0-5)
- Modify the two-column layout proportions if needed

### Academic Resume:
- Add your publications in reverse chronological order
- Include all relevant academic service and committee work
- Update grant information with current funding
- Add conference presentations and invited talks

## Compilation Notes

- Some templates may require multiple compilation passes for proper cross-references
- If you encounter missing package errors, install the required packages through your LaTeX distribution
- For the creative template, ensure you have TikZ properly installed
- The academic template uses `etaremune` for reverse numbering - install if not available

## Tips for Success

1. **Keep it relevant**: Tailor your resume content to the specific job or field
2. **Quantify achievements**: Use numbers and metrics where possible
3. **Proofread carefully**: Check for typos, formatting consistency, and accuracy
4. **Test ATS compatibility**: Ensure your chosen template works with applicant tracking systems
5. **Update regularly**: Keep your resume current with new skills and experiences

## License

These templates are provided as-is for personal and professional use. Feel free to modify and distribute as needed.

## Contributing

If you have improvements or additional templates to contribute, please feel free to submit them!
