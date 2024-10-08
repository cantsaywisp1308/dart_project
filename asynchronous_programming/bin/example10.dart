import 'dart:async';

void main(List<String> args) async {
  // await for (final name in names) {
  //   print(name.toUpperCase());
  // }

  // await for (final name in names.map((name) => name.toUpperCase())) {
  //   print(name);
  // }

  await for (final capitalizedName in names.getCapitalized) {
    print(capitalizedName);
  }
  print('------------------');
  await for (final capitalizedNameUsingMap in names.getCapitalizedUsingMap) {
    print(capitalizedNameUsingMap);
  }
}

extension on Stream<String> {
  Stream<String> get getCapitalized => transform(
        ToUpperCase(),
      );
  Stream<String> get getCapitalizedUsingMap => map(
        (name) => name.toUpperCase(),
      );
}

Stream<String> names = Stream.fromIterable([
  'Seth',
  'Larson',
  'Joe',
]);

class ToUpperCase extends StreamTransformerBase<String, String> {
  @override
  Stream<String> bind(Stream<String> stream) {
    return stream.map(
      (name) => name.toUpperCase(),
    );
  }
}
