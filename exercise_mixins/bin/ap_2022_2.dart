void main(List<String> args) {
  TextBook bio2015 = TextBook("Biology", 49.75, 2);
  TextBook bio2019 = TextBook("Biology", 39.75, 3);
  print(bio2019.getEdition());
  print(bio2019.getBookInfo());
  print(bio2019.canSubstituteFor(bio2015));
  TextBook math = TextBook("Calculus", 45.35, 1);
  print(bio2015.canSubstituteFor(bio2019));
  print(bio2015.canSubstituteFor(math));
}

extension on TextBook {
  int getEdition() {
    return _editionNumber;
  }

  bool canSubstituteFor(TextBook textbook) {
    if (_title == textbook._title &&
        _editionNumber >= textbook._editionNumber) {
      return true;
    } else {
      return false;
    }
  }
}

class Book with HasInfo {
  final String _title;
  final double _price;

  Book(this._title, this._price);

  @override
  String getBookInfo() {
    return _title;
  }

  @override
  String getTitile() {
    return '$_title - $_price';
  }
}

class TextBook extends Book with HasInfo {
  final int _editionNumber;

  TextBook(super.title, super.price, this._editionNumber);

  @override
  String getBookInfo() {
    return '$_price - $_price - $_editionNumber';
  }
}

mixin HasInfo {
  String getTitile();

  String getBookInfo();
}
