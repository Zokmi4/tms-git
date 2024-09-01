class BankAccount:
    def __init__(self, account_number, owner_name, balance=0):
        self.account_number = account_number
        self.owner_name = owner_name
        self.balance = balance

    def deposit(self, amount):
        self.balance += amount
        return self.balance

    def withdraw(self, amount):
        if amount > self.balance:
            print("Недостаточно средств!")
        else:
            self.balance -= amount
        return self.balance

# Пример
account1 = BankAccount("1234567890", "Иван Иванов", 1000)
account2 = BankAccount("0987654321", "Анна Петрова", 500)

print(f"Баланс после пополнения: {account1.deposit(500)}")
print(f"Баланс после снятия: {account1.withdraw(300)}")
print(f"Баланс после снятия: {account2.withdraw(600)}")
