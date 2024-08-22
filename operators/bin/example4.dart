void main(List<String> args) {
  const age = 50;
  print(age + 20);
  print(age - 20);
  print(age * 20);
  print(age / 20);
  print(age ~/ 20); //count how many 20 in 50, or divide to take int
  print(age % 20); // take remainder
  
  print(age == 20);
  print(age != 20);

  print(age > 20);
  print(age < 20);
  print(age >= 20);
  print(age <= 20);

  print(age & 20); 
  // 1011 1000
  // 0000 1010
  // 0000 1000 --> 16

  print(age | 20);
  print(age ^ 20); //age XOR 20
  print(age >> 20);
  print(age << 20);
}