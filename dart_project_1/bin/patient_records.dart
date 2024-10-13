import 'medicalProblem.dart';

List<PatientRecord> records = [];

class PatientRecord with RecordFunction {
  final String _patientName;
  final DateTime _dob;
  final String _address;
  final String _phoneNumber;
  final String? _email;
  final List<MedicalProblem>? _medicalHistory;

  List<MedicalProblem>? get medicalHistory => _medicalHistory;

  PatientRecord(
      {required String patientName,
      required DateTime dob,
      required String address,
      required String phoneNumber,
      required String? email,
      required List<MedicalProblem>? medicalHistory})
      : _patientName = patientName,
        _dob = dob,
        _address = address,
        _phoneNumber = phoneNumber,
        _email = email,
        _medicalHistory = medicalHistory;

  @override
  String seeRecord() {
    return 'Patient name: $_patientName \n'
        'Date of birth: $_dob \n'
        'Address: $_address \n'
        'Phone Number: $_phoneNumber \n'
        'Email: $_email\n'
        'medical history: $_medicalHistory';
  }

  @override
  bool checkHealthIssue(String issue) {
    return false;
  }

  @override
  void addMedicalProblem(MedicalProblem medicalProblem) {
    _medicalHistory?.add(medicalProblem);
  }
}

mixin RecordFunction {
  void addMedicalProblem(MedicalProblem medicalProblem);

  String seeRecord();

  bool checkHealthIssue(String issue);
}
