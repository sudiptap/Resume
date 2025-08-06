# VSCode Setup for LaTeX Resume Development

## PDF Viewing Extension

I've installed the **PDF Preview** extension (`tomoki1207.pdf`) which allows you to view PDF files directly within VSCode.

### Features:
- ✅ View PDFs in VSCode tabs
- ✅ Zoom in/out functionality
- ✅ Page navigation
- ✅ Side-by-side editing with LaTeX source
- ✅ Auto-refresh when PDF is regenerated

## Usage

### Viewing PDFs in VSCode:
```bash
# Open any PDF file in VSCode
code ml_engineer_resume.pdf

# Or use the updated Makefile (automatically opens in VSCode)
make
make modern
make classic
```

### Recommended Workflow:
1. **Split View**: Open your `.tex` file and `.pdf` file side by side
   - `Cmd+\` (Mac) or `Ctrl+\` (Windows/Linux) to split editor
   - Edit LaTeX on the left, view PDF on the right

2. **Live Preview**: 
   - Make changes to your `.tex` file
   - Run `make` to recompile
   - PDF will automatically update in VSCode

3. **Quick Navigation**:
   - Use `Cmd+P` (Mac) or `Ctrl+P` (Windows/Linux) to quickly open files
   - Type the filename to switch between `.tex` and `.pdf` files

## Additional Recommended Extensions

For an even better LaTeX development experience, consider installing:

```bash
# LaTeX Workshop - Full LaTeX support
code --install-extension James-Yu.latex-workshop

# LaTeX Utilities - Additional LaTeX tools
code --install-extension tecosaur.latex-utilities

# Code Spell Checker - Catch typos in your resume
code --install-extension streetsidesoftware.code-spell-checker
```

## Keyboard Shortcuts

- **Zoom In**: `Cmd/Ctrl + +`
- **Zoom Out**: `Cmd/Ctrl + -`
- **Fit to Width**: `Cmd/Ctrl + 0`
- **Next Page**: `Page Down` or `J`
- **Previous Page**: `Page Up` or `K`

## Tips

1. **Auto-compile**: The Makefile now automatically opens PDFs in VSCode
2. **Side-by-side**: Keep your `.tex` and `.pdf` files open in split view
3. **Quick edits**: Make small changes and run `make` to see immediate results
4. **Version control**: PDFs are visible in VSCode, making it easy to review changes

Your VSCode is now optimized for LaTeX resume development with in-editor PDF viewing!
