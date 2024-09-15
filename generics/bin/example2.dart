void main(List<String> args) {
  print(doTypesMatch(1, 1));
  print(doTypesMatch(1, 1.0));
  print(doTypesMatch('Foo', 1));
  print(doTypesMatch('Foo', 'Bar'));
}

//bool doTypesMatch<TYPE1, TYPE2>(TYPE1 a, TYPE2 b) => TYPE1 == TYPE2; OK
bool doTypesMatch<L, R>(L a, R b) => L == R;
