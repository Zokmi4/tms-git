def unique_common_elements(list1, list2):
    common = set(list1).intersection(set(list2))
    unique_common = list(common)
    print("Уникальные общие элементы:", unique_common)

list1 = [1, 2, 3, 4, 5]
list2 = [4, 5, 6, 7, 8]
unique_common_elements(list1, list2)
