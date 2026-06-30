# PINTAR — Document Creation

## Word (.docx)
- **python-docx**: Create documents with headings, paragraphs, tables, images
- **Template**: Use existing .docx as template with jinja2/docxtpl
- **Styles**: Custom styles, fonts, colors, spacing
- **Mail merge**: Bulk document generation from data sources

```python
from docx import Document
doc = Document()
doc.add_heading("Title", level=1)
doc.add_paragraph("Content")
doc.add_table(rows=3, cols=3)
doc.save("output.docx")
```

## Excel (.xlsx)
- **openpyxl**: Create/modify .xlsx with formulas, charts, pivot tables
- **pandas → Excel**: DataFrame.to_excel() with formatting
- **xlsxwriter**: High-performance Excel with charts
- **Formulas**: SUM, VLOOKUP, IF, INDEX/MATCH, XLOOKUP

```python
from openpyxl import Workbook
wb = Workbook()
ws = wb.active
ws["A1"] = "Data"
ws["B1"] = "=SUM(A2:A10)"
wb.save("output.xlsx")
```

## PowerPoint (.pptx)
- **python-pptx**: Slides, layouts, text boxes, images, charts
- **Template**: Start from .potx template
- **Animations**: Entry/exit effects, transitions

```python
from pptx import Presentation
prs = Presentation()
slide = prs.slides.add_slide(prs.slide_layouts[0])
slide.shapes.title.text = "Presentation Title"
prs.save("output.pptx")
```

## PDF
- **ReportLab**: Programmatic PDF generation
- **WeasyPrint**: HTML to PDF
- **pdfkit**: wkhtmltopdf wrapper
- **PyPDF2/pikepdf**: PDF manipulation (merge, split, rotate)

## Markdown → Everything
- **Pandoc**: Universal document converter
  - .md → .docx, .pdf, .html, .pptx, .epub
- **Marp**: Markdown to presentation slides
