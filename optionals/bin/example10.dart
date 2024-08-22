void main(List<String> args) {
  String? getFullNameOptional() {
    return null;
  }

  String getFullName() {
    return 'Foo Bar';
  }

  final String fullName = getFullNameOptional() ?? getFullName();
  print(fullName);

  final someName = getFullNameOptional();
  someName.describe(); //if the Object (without "?") then someName --> someName?
}

extension Describe on Object? {
  void describe() {
    if(this == null) {
      print('This object is null'); 
    } else {
      print('$runtimeType : $this');
    }
  }
}