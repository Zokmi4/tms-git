import os

def find_files_with_substring(files, substring):
    matching_files = [file for file in files if substring in file]
    print("Файлы, содержащие подстроку:", matching_files)

files = ["report.doc", "data.txt", "presentation.ppt"]
substring = "data"
find_files_with_substring(files, substring)
