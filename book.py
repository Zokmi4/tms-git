class Book:
    def __init__(self, title, author, year):
        self.title = title
        self.author = author
        self.year = year

    def get_info(self):
        return f"{self.title} by {self.author}, published in {self.year}"

    def set_info(self, title=None, author=None, year=None):
        if title:
            self.title = title
        if author:
            self.author = author
        if year:
            self.year = year

# Пример
book1 = Book("Страх и отвращение в Лас_вегасе", "Хантер Томпсон", 1971)
book2 = Book("Общая хирургия", "Кто-то там ", 2018)

print(book1.get_info())
book1.set_info(year=2000)
book2.set_info(author="Профессор кислых щей")
print(book2.get_info())
