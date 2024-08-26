void main(List<String> args) {
  int number = 4;
  print(isPrime(number));
}

bool isPrime(int number) {
  int count = 0;
  for (int i = 2; i <= number; i++) {
    if (number % i == 0) {
      count++;
    }
  }
  return (count == 1);
}
