void main(List<String> args) {
  var address = '123 Main Street';
  print(address);
  address = '456 Main Street';
  print(address);
  address = address.replaceAll('Main', 'Baldwin');
  print(address);
}