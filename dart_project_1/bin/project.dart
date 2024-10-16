import 'patient_records.dart';
import 'medicalProblem.dart';

void main(List<String> args) {
  List<MedicalProblem> jamesMedicalHistory = [
    MedicalProblem(DateTime(2023, 1, 1), 'Flu', 'Rest and fluids'),
    MedicalProblem(DateTime(2022, 6, 15), 'Allergy', 'Antihistamines'),
    MedicalProblem(DateTime(2021, 10, 30), 'Sprained Ankle', 'Rest and ice'),
  ];

  PatientRecord jamesRecord = PatientRecord(
      patientName: 'James Hall',
      dob: DateTime(1993, 13, 09),
      address: '123 Main St, New York',
      phoneNumber: '3125091992',
      email: null,
      medicalHistory: jamesMedicalHistory);

  //print(jamesRecord.seeRecord());

  records.add(jamesRecord);
  print(jamesRecord.checkHealthIssue('ALLerGy'));
}
