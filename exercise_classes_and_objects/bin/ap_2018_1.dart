import 'dart:math';

void main(List<String> args) {
  final frogSimulation = FrogSimulation(60, 4);
  print(frogSimulation.runSimulation(5));
}

class FrogSimulation {
  final int _goalDistance;
  final int _maxHops;

  FrogSimulation(
    this._goalDistance,
    this._maxHops,
  );

  int hopDistance() {
    final rd = Random();
    int hop = rd.nextInt(21);
    return hop;
  }

  bool simulate() {
    int postion = 0;
    bool result = false;
    List<int> hops = [];
    for (int i = 0; i < _maxHops; i++) {
      int step = hopDistance();
      postion += step;
      hops.add(step);
      if (postion >= _goalDistance) {
        result = true;
      } else if (postion < 0) {
        return false;
      }
    }
    print(hops);
    return result;
  }

  int runSimulation(int num) {
    int success = 0;
    for (int i = 0; i < num; i++) {
      if (simulate()) {
        success++;
      }
    }
    return success;
  }
}
