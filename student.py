class Student:
    def __init__(self, name, age, grades):
        self.name = name
        self.age = age
        self.grades = grades

    def calculate_average(self):
        return sum(self.grades) / len(self.grades)

    def get_status(self):
        average = self.calculate_average()
        if average >= 4.5:
            return "Отличник"
        elif 3.5 <= average < 4.5:
            return "Хорошист"
        else:
            return "Троечник"

student1 = Student("Иван Иванов", 20, [4, 5, 5, 4])
student2 = Student("Анна Петрова", 22, [3, 3, 4, 3])

print(f"{student1.name} - Средний балл: {student1.calculate_average()}, Статус: {student1.get_status()}")
print(f"{student2.name} - Средний балл: {student2.calculate_average()}, Статус: {student2.get_status()}")
