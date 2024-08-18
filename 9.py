def replace_vowels(input_string):
    vowels = "aeiouAEIOU"
    replaced_string = ''.join('-' if c in vowels else c for c in input_string)
    print(replaced_string)

replace_vowels("Hello World")
