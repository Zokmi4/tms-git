import os

os.makedirs('mydir', exist_ok=True)
os.chdir('mydir')

open('file1.txt', 'w').close()
open('file2.txt', 'w').close()
open('file3.txt', 'w').close()
print(os.listdir('.'))
