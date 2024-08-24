void main(List<String> args) {
  //doSomethingWithAge(); -->invalid code
  doSomethingWithAge(age: 42);
  doSomethingWithAge(age: null);
}

void doSomethingWithAge({required int? age}) {
  if(age != null) {
    final in2Years = age +2;
    print('You will be $in2Years in 2 years');
  } else {
    print('You did not tell me your age!');
  }
}