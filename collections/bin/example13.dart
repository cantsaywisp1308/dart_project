void main(List<String> args) {
  final string = 'abracadabra';
  // var result = '';
  // for (final char in string.split('')) {
  //   if (char == 'a' || char == 'b' || char == 'c') {
  //   } else {
  //     result += char;
  //   }
  // }
  // print(result);
  var allExcemptABC = {
    for (final char in string.split('')) 'abc'.contains(char) ? null : char
  }
    ..removeAll([null])
    ..cast<String>();
  print(allExcemptABC);

  final allNumbers = Iterable.generate(100);
  final evenNumbers = [
    for (final number in allNumbers)
      if (number % 2 == 0) number
  ];

  final evenNumberFunctional = allNumbers.where((number) => number % 2 == 0);

  final oddNumbers = [
    for (final number in allNumbers)
      if (number % 2 != 0) number
  ];

  final oddNumberFunctional = allNumbers.where((number) => number % 2 != 0);
  print(allNumbers);
  print(evenNumbers);
  print(evenNumberFunctional);
  print(oddNumbers);
  print(oddNumberFunctional);

  final names = ['Foo Bar', 'John Doe', 'Alice Young'];
  final namesAndLength = {
    for (final name in names) name: name.length,
  };
  print(namesAndLength);
}
