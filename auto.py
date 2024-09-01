class Car:
    def __init__(self, brand, model, color, year):
        self.brand = brand
        self.model = model
        self.color = color
        self.year = year

    def get_info(self):
        return f"{self.brand} {self.model}, {self.color}, {self.year}"

    def set_info(self, brand=None, model=None, color=None, year=None):
        if brand:
            self.brand = brand
        if model:
            self.model = model
        if color:
            self.color = color
        if year:
            self.year = year

# Примеры использования
car1 = Car("Toyota", "Camry", "Black", 2020)
car2 = Car("Honda", "Civic", "Blue", 2018)

print(car1.get_info())
car1.set_info(color="Red")
print(car1.get_info())
