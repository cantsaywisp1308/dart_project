void main(List<String> args) async {
  await for (final number in getNumbers()) {
    print(number);
  }

  try {
    await for (var name in getNames()) {
      print(name);
    }
  } catch (e) {
    print(e);
  }
}

Stream<int> getNumbers() async* {
  for (var i = 0; i < 10; i++) {
    await Future.delayed(
      const Duration(seconds: 1),
    );
    yield i; //return in Stream
    // | (1 sec delayed) 0 --> (1 sec delayed) 1 --> (1 sec delayed) 2 --> (1 sec delayed) 3 ... 9
  }
}

Stream<String> getNames() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  throw Exception('Something went wrong');
  //yield 'Doe'; ---> cannot yield after exception
}
