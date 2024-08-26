void main(List<String> args) {
  const a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];
  List<int> c = [];

  for(int i = 0 ; i < a.length; i++){
    if(a[i] % 2 ==0) {
      c.add(a[i]);
    }
  }

  print(c);
}