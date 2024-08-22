void main(List<String> args) {
  //print('Hello' + 2); Error: A value of type 'int' can't be assigned to a variable of type 'String'.
  var myAge = 20;
  print(myAge = 30);
  print(myAge ~/ 2); //not assign back to myAge
  print(myAge ~/= 2); //assign back to myAge
  print(myAge *= 2);
  print(myAge += 4);
  print(myAge &= 2);
  print(myAge |= 4);
  print(myAge ^= 10);
  print(myAge -= 10);
  print(myAge);
}