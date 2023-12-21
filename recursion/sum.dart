

void main() {
  int result = sumofNaturalNumber(5);
  print("Sum of numbers up to 5 is: $result");
  int factorial = factorialofN(5);
   print("factorial of numbers is: $factorial");
}

int sumofNaturalNumber(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n + (sumofNaturalNumber(n - 1));
  }
}

int factorialofN(int n) {
  if (n == 1) {
    return 1;
  } else {
    return n * (factorialofN(n - 1));
  }
}





