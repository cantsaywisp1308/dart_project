void main(List<String> args) {
  final vehicle = VehicleType.truck;
  switch (vehicle) {
    case VehicleType.car:
    case VehicleType.motorcycle:
    case VehicleType.bicycle:
      print('Most common personal vehicles');
      break;
    case VehicleType.truck:
      print('Usually used for work');
      break;
    // default:
    //   print('Unknown vehicle');
    //   break;
  }
}

enum VehicleType {
  car,
  truck,
  motorcycle,
  bicycle,
}
