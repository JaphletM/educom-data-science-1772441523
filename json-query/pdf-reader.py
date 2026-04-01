import sys
import PyPDF2
import re

filename="scan.pdf"

# Check for filename argument
#if len(sys.argv) > 1:
 #   filename = sys.argv[1]
#else:
 #   print("No filename provided")
  #  exit()

#print("Filename provided:", filename)

# Read PDF
pdf_contents = ""

with open(filename, 'rb') as pdf_file:
    pdf_reader = PyPDF2.PdfReader(pdf_file)

    for page_num in range(len(pdf_reader.pages)):
        page = pdf_reader.pages[page_num]  # FIXED
        text = page.extract_text()
        if text:
            pdf_contents += text + "\n"

print("\n--- PDF CONTENT ---\n")
print(pdf_contents)

# Remove spaces for phone matching
cleaned_text = re.sub(r"\s+", "", pdf_contents)

# Patterns (removed ^ $ so it can find inside text)
phone_pattern = r'(?:0|0031-?|\+31-?)(?:6-?[1-9]\d{7}|[1-9]\d{1,2}-?[1-9]\d{5,6})'
url_pattern = r'(ftp|http|https):\/\/\S+'

# Find all matches
phone_matches = re.findall(phone_pattern, cleaned_text)
url_matches = re.findall(url_pattern, pdf_contents)

# Print results
print("\n--- PHONE MATCHES ---")
if phone_matches:
    for m in phone_matches:
        print(m)
else:
    print("No phone numbers found")

print("\n--- URL MATCHES ---")
if url_matches:
    for m in url_matches:
        print(m)
else:
    print("No URLs found")