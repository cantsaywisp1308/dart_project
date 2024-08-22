void main(List<String> args) {
  String? firstName = 'John';
  String? lastName = null;

  final fullName = firstName.flatmap((f) => lastName.flatmap((l) => '$f $l')) 
  ?? 'Either first or last name or both are null';
  print(fullName);
}

extension FlatMap<T> on T? {
  R? flatmap<R> (
    R? Function(T) callback,
  ) {
    final shadow = this;
    if(shadow == null) {
      return null;
    } else {
      return callback(shadow);
    }
  }
}