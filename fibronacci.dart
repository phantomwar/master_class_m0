void main() {
  fibonacciWhileLoop();
  fibonacciForLoop();
}

void fibonacciWhileLoop() {
  print('==Fibonacci while Loop==');
  int number1 = 1;
  int number2 = 1;
  int nextNumber = 0;

  while (number1 < 1000) {
    print(number1);
    nextNumber = number1 + number2;
    number1 = number2;
    number2 = nextNumber;
  }
}

void fibonacciForLoop() {
  print('==Fibonacci For Loop==');
  int number1 = 1;
  int number2 = 1;
  int nextNumber = 0;

  for (number1; number1 < 1000;) {
    print(number1);
    nextNumber = number1 + number2;
    number1 = number2;
    number2 = nextNumber;
  }
}
