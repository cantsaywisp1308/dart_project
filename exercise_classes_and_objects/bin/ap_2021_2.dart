void main(List<String> args) {
  SingleTable table1 = SingleTable(4, 74, 60.0);
  SingleTable table2 = SingleTable(8, 74, 70.0);
  SingleTable table3 = SingleTable(12, 76, 75.0);

  CombinedTable combined = CombinedTable(table3, table2);
  print(combined.getDesirability());
  table2.setViewQuality = 80;
  print(combined.getDesirability());
}

class SingleTable {
  final int _numSeats;
  final int _height;
  double _viewQuality;

  SingleTable(this._numSeats, this._height, this._viewQuality);

  int get numSeats => _numSeats;
  int get height => _height;
  double get viewQuality => _viewQuality;

  set setViewQuality(double value) {
    _viewQuality = value;
  }
}

class CombinedTable {
  final SingleTable table1;
  final SingleTable table2;

  CombinedTable(this.table1, this.table2);

  bool canSeat(int seat) {
    return (table1._numSeats + table2._numSeats - 2) >= seat;
  }

  double getDesirability() {
    if (table1._height == table2._height) {
      return (table1._viewQuality + table2._viewQuality) / 2;
    } else {
      return (table1._viewQuality + table2._viewQuality) / 2 - 10;
    }
  }
}
