import math

class Circle:
    def __init__(self, radius, color):
        self.radius = radius
        self.color = color

    def area(self):
        return math.pi * (self.radius ** 2)

    def circumference(self):
        return 2 * math.pi * self.radius

# Пример 
circle1 = Circle(5, "red")
circle2 = Circle(7, "blue")

print(f"Площадь круга 1: {circle1.area()}, Длина окружности: {circle1.circumference()}")
print(f"Площадь круга 2: {circle2.area()}, Длина окружности: {circle2.circumference()}")