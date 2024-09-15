void main(List<String> args) {
  const JSON<String> json = {
    'name': 'John',
    'address': '123 Main St',
    //'age' : 30 --> error
  };
  print(json);
}

typedef JSON<T> = Map<String, T>;
