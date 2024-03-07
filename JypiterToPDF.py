import nbformat as nbf
from nbconvert import PDFExporter
import os

# Reemplaza "ruta_archivo.ipynb" con la ruta real a tu archivo
ruta_archivo = "Python-A-a-Z\\Tema3-Strings-En-Python\\Tarea2-Strings-con-Python.ipynb"

# Obtiene la ruta del archivo sin el nombre
ruta_carpeta = ruta_archivo.rsplit('\\', 1)[0]

# Carga el archivo .ipynb
with open(ruta_archivo, "r", encoding="utf-8") as f:
    nb = nbf.read(f, as_version=4)

# Configura el exportador PDF
exporter = PDFExporter()

# Convierte el notebook a PDF
pdf_data, resources = exporter.from_notebook_node(nb)

# Genera el nombre del archivo PDF
nombre_pdf = ruta_archivo.split('\\')[-1].replace(".ipynb", ".pdf")

# Guarda el contenido PDF
with open(os.path.join(ruta_carpeta, nombre_pdf), "wb") as f:
    f.write(pdf_data)

print(f"¡Archivo {nombre_pdf} creado exitosamente en {ruta_carpeta}!")

#C:\Users\sebas\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\MiKTeX