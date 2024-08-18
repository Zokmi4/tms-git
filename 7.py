def common_characters(str1, str2):
    common = set(str1).intersection(set(str2))
    print("Общие символы:", common)

str1 = "apple"
str2 = "pineapple"
common_characters(str1, str2)
