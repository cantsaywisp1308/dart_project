import 'package:collection/collection.dart';

void main(List<String> args) {
  // 0000 0000 : false; 0000 0001: true
  testBoolList();
  print('------------');
  testCanonicalizedMap();
  print('------------');
  testCombinedIterableView();
  print('-------------');
  testCombinedListView();
  print('-------------');
  testCombinedMapView();
  print('-------------');
  testMapMerging();
}

void testCombinedMapView() {
  var map1 = {'a': 1, 'b': 2, 'c': 3};
  var map2 = {'a': 4, 'b': 5, 'c': 6};
  var map3 = {'c': 7, 'd': 8, 'e': 9};
  var combinedMap = CombinedMapView([map1, map2, map3]);
  map1['Foo'] = 20; //each map can be modified
  print(combinedMap); //value of the same key cannot be updated
  print(combinedMap['a']);
  print(combinedMap['b']);
  print(combinedMap['c']); //c is still 3
  print(combinedMap['d']);
  print(combinedMap['e']);
  print(combinedMap['f']);
  try {
    combinedMap['a'] = 10; //Cannot modify unmodifiable map
  } catch (e) {
    print(e);
  }
}

void testMapMerging() {
  const info1 = {'name': 'John', 'age': 30, 'height': 1.8};

  const info2 = {'name': 'John 2', 'age': 31, 'height': 1.8, 'weight': 80};
  final merge =
      mergeMaps(info1, info2); //merge will override the values of keys
  final merge2 = mergeMaps(info1, info2,
      value: (one, two) => one); //take the value 1 if have the same key
  print(merge);
  print(merge2);
}

void testCombinedListView() {
  //combinedListView is the list of lists and it is unmodifiable
  final swedishNames = ['Sven', 'Karl', 'Gustav'];
  final norwegianNames = ['Sven', 'Karl', 'Ole'];
  final frenchNames = ['Sven', 'Karl', 'Piere'];
  final names = CombinedListView([swedishNames, norwegianNames, frenchNames]);
  print(names);
  if (names.contains('Sven')) {
    print('Sven is in the list');
  }
  swedishNames.removeAt(0); //names is also be affected
  try {
    names.removeAt(0); //Cannot modify an unmodifiable List
  } catch (e) {
    print(e);
  }
}

void testCombinedIterableView() {
  final Iterable<int> one = [1, 2, 3];
  final two = [10, 20, 30];
  final Iterable<int> three = [40, 50, 60];
  var combined = CombinedIterableView([one, two, three]);
  print(combined);
  //two.add(40); //--> combined list is also affected
  two.add(40); //--> cant do if two is Iterable<int>
  print(combined);
  print(combined.length);
  print(combined.isEmpty);
  print(combined.contains(5));
  print(combined.contains(10));
}

void testCanonicalizedMap() {
  final info = {
    'name': 'John',
    'age': 30,
    'sex': 'male',
    //'bla': 'bla', --> bla replace age and sex
    'address': 'New York',
  };

  final canonMap = CanonicalizedMap.from(info, (key) {
    //return key.length; --> to ensure that keys are equivalent to some criteria map to the same value
    return key.split('').first;
  });
  print(canonMap);
}

void testBoolList() {
  final boolList = BoolList(10, growable: true);
  print(boolList);
  boolList[3] = true;
  if (boolList[3] == true) {
    print('Bool value at 3 is true');
  } else {
    print('Bool value at 3 is false');
  }
  print(boolList);
  boolList.length *= 2;
  print(boolList);
}
