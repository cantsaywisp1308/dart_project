import 'dart:collection';

void main(List<String> args) {
  //final List<String> names = [];
  //print(names.last); //invalid
  //print(names.first); //invalid
  const notFound = 'NOT_FOUND';
  const defaultString = '';
  final myList = SafeList(
    defaultValue: defaultString,
    absentValue: notFound,
    values: ['Bar', 'Baz'],
  );
  print(myList[0]);
  print(myList[1]);
  print(myList[2]);
}

class SafeList<T> extends ListBase<T> {
  final List<T> _list;
  final T absentValue;
  final T defaultValue;

  SafeList(
      {required this.defaultValue, required this.absentValue, List<T>? values})
      : _list = values ?? [];

  @override
  int get length => _list.length;

  @override
  T operator [](int index) => index < _list.length ? _list[index] : absentValue;

  @override
  void operator []=(int index, T value) => _list[index] = value;

  @override
  set length(int newLength) {
    if (newLength <= _list.length) {
      _list.length = newLength;
    } else {
      _list.addAll(List.filled(newLength - _list.length, defaultValue));
    }
  }

  @override
  T get first => _list.isNotEmpty ? _list.first : absentValue;

  @override
  T get last => _list.isEmpty ? _list.last : absentValue;
}
