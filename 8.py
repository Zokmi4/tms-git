def find_median(numbers):
    sorted_numbers = sorted(numbers)
    n = len(sorted_numbers)
    if n % 2 == 0:
        median = (sorted_numbers[n//2 - 1] + sorted_numbers[n//2]) / 2
    else:
        median = sorted_numbers[n//2]
    print(f"Медиана: {median}")

numbers = [3, 1, 4, 1, 5, 9, 2]
find_median(numbers)
