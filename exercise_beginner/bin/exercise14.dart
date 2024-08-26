void main(List<String> args) {
  String string = 'My name is Michele';
  print(reversed(string));
}

String reversed(String string) {
  List<String> list = string.split(' ');
  String result = '';
  for (int i = list.length - 1; i > 0; i--) {
    result += list[i] + ' ';
  }
  result += list[0];
  return result;
}
