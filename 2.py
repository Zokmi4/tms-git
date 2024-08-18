import string

def analyze_string(input_string):
    upper_count = sum(1 for c in input_string if c.isupper())
    lower_count = sum(1 for c in input_string if c.islower())
    digit_count = sum(1 for c in input_string if c.isdigit())
    punctuation_count = sum(1 for c in input_string if c in string.punctuation)
    
    print(f"Количество букв в верхнем регистре: {upper_count}")
    print(f"Количество букв в нижнем регистре: {lower_count}")
    print(f"Количество цифр: {digit_count}")
    print(f"Количество символов пунктуации: {punctuation_count}")

