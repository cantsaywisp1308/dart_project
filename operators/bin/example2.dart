void main(List<String> args){
  //unary prefix, unary postfix, binary infix, compound assignment
  int age = 30; // Error: Can't assign to the const variable 'age'. if change to const
  //int age2 = --age;
  print(--age);
  print(age); // this also change as well
  //print(age2);

  print(!true);
  print(++age);

  print(~1); //print negative binary value
}