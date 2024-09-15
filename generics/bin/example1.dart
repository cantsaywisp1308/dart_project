void main(List<String> args) {
  final double doubleValue = eitherIntOrDouble();
  print(doubleValue);

  final int intValue = eitherIntOrDouble();
  print(intValue);

  final String bla = eitherIntOrDouble();
  print(bla);
}

// enum WhatToReturn { int, double }

// num eitherIntOrDouble(WhatToReturn whatToReturn) {
//   switch (whatToReturn) {
//     case WhatToReturn.int:
//       return 1;
//     case WhatToReturn.double:
//       return 1.0;
//   }
// }

T eitherIntOrDouble<T extends num>() {
  switch (T) {
    case int:
      return 1 as T;
    case double:
      return 1.0 as T;
    default:
      throw Exception('Not supported');
  }
}
