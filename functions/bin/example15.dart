
void main(List<String> args) {
  print(minus());
  print(add(30, 20));
  print(minus(20, 30));
  print(performOperation(20, 10, add));
  print(performOperation(20, 10, minus));
}

int performOperation(int a, int b, int Function(int, int) operation) => operation(a,b);

int minus([int lhs = 10, int rhs = 5]) => lhs - rhs;
int add([int lhs = 10, int rhs = 5]) => lhs + rhs;