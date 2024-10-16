List<DrugInventory> drugList = [];

class DrugInventory {
  Drug _allDrugs;
  int _drugQuantity;
  String _measure;

  DrugInventory(this._allDrugs, this._drugQuantity, this._measure);
}

class DrugImportOrder {
  final DateTime _dateImport;
  final Map<String, int> _importedDrugs;
  final double _totalValue;

  DrugImportOrder(this._dateImport, this._importedDrugs, this._totalValue);
}

class Drug {
  final String _drugName;
  final double _price;
  final String _description;

  Drug(this._drugName, this._price, this._description);
}
