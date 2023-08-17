class Calculator:
    def add(self, a, b):
        return a + b
    def subtract(self, a, b):
        return a - b
    def multiply(self, a, b):
        return a * b
    def divide(self,a, b):
        return a / b

calculator = Calculator()


add_result = calculator.add(5, 3)
subtract_result = calculator.subtract(10, 4)
multiply_result = calculator.multiply(6, 2)
division_result = calculator.divide(15, 3)

print("Sum:", add_result)
print("Difference:", subtract_result)
print("Product:", multiply_result)
print("Quotient:", division_result)