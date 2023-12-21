int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  int result = factorial(5);
  print("Factorial of 5 is: $result");
}