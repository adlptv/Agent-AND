# PINTAR Documents Reference

## Word (.docx)
```python
from docx import Document
doc = Document()
doc.add_heading("Title", level=1)
doc.add_paragraph("Content text")
doc.add_table(rows=3, cols=3)
doc.save("output.docx")
```
Template: docxtpl + jinja2 for mail merge.

## Excel (.xlsx)
```python
from openpyxl import Workbook
wb = Workbook()
ws = wb.active
ws["A1"] = "Name"
ws["B1"] = "=SUM(A2:A100)"
wb.save("output.xlsx")
```
pandas: `df.to_excel("output.xlsx", index=False, engine="openpyxl")`

## PowerPoint (.pptx)
```python
from pptx import Presentation
prs = Presentation()
slide = prs.slides.add_slide(prs.slide_layouts[0])
slide.shapes.title.text = "Title"
prs.save("output.pptx")
```

## PDF
- ReportLab: programmatic PDF
- WeasyPrint: HTML/CSS to PDF
- pdfkit: wkhtmltopdf wrapper
- PyPDF2/pikepdf: merge, split, rotate, extract

## Markdown Conversion
- Pandoc: .md -> .docx, .pdf, .html, .pptx, .epub
- Marp: Markdown to presentation slides
