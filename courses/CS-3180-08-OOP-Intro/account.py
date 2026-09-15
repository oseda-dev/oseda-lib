class Account:

    def __init__(self, startingBalance):
        self._balance = startingBalance

    def get_balance(self):
        return self._balance

    def __set_balance(self, newBalance):
        if self._balance - newBalance < 0:
            raise RuntimeError()
        self._balance = newBalance

    def process_transaction(self, amount):
        print("Processing transaction...")
        self.__set_balance(amount)


a = Account(500)
a.process_transaction(100)

a._balance = -200
print(a._balance)
