Map<String, int> drugList = {};

class DrugList {
  List<Drug> _allDrugs;
  Map<String, int> _drugQuantity;

  DrugList(this._allDrugs, this._drugQuantity);
}

extension on Map<String, int> {
  Map<String, int>? add(DrugImportOrder importOrder) {
    for (final key in importOrder._importedDrugs.keys) {
      if (!drugList.keys.contains(key)) {
        drugList[key] = importOrder._importedDrugs[key]!;
      } else {
        drugList[key] = drugList[key]! + importOrder._importedDrugs[key]!;
      }
    }

    return drugList;
  }
}

class DrugImportOrder {
  final DateTime _dateImport;
  final Map<String, int> _importedDrugs;
  final double _totalValue;

  DrugImportOrder(this._dateImport, this._importedDrugs, this._totalValue);
}

class Drug {
  final String _drugName;
  final int _quantity;
  final double _price;

  Drug(this._drugName, this._quantity, this._price);
}
