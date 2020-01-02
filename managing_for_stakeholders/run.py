from src.lib.pdf import Pdf
import os

if __name__ == "__main__":
    from os import listdir
    from os.path import isfile, join

    pdf = Pdf()

    path = './pdf'
    pdf_files = [f for f in listdir(path) if isfile(join(path, f))]

    for file in pdf_files:
        pdf.convert_to_text(os.path.join(path, file))
