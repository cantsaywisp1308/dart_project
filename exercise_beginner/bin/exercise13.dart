void main(List<String> args) {
  List<int> list = [
    0,
    0,
    1,
    1,
    2,
    2,
    3,
    4,
    5,
    6,
    7,
    7,
    8,
    9,
    10,
    11,
    11,
    12,
    12,
    13,
    14,
    25
  ];
  print(toSet(list));
}

Set<int> toSet(List<int> list) {
  Set<int> set = {};
  for (final number in list) {
    set.add(number);
  }
  return set;
}
