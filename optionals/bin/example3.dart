void main(List<String> args) {
  //int? age = null; doesn't allow int to be null
  int? age = 20;
  //age = null;
  print(age);
  // if(age == null) {
  //   print('Age is null');
  // } else {
  //   print('Age is not null');
  // }
  something(age);
}

void something(int? age){
  if(age == null) {
    print('Age is null');
  } else {
    print('Age is not null');
  }
}