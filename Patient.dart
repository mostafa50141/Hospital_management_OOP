import 'Person.dart';

class Patient extends Person {
  String _ailment;
  String _condition;
  bool _admitted;

  Patient(String name,
      int age,
      String gender,
      String nationalId,
      String contactNumber,
      String address,
      String? email,
      this._ailment,
      this._condition,
      this._admitted,) : super(
      name,
      age,
      gender,
      nationalId,
      contactNumber,
      address,
      email);


  String get ailment => _ailment;

  String get condition => _condition;

  bool get admitted => _admitted;


  set ailment(String value) {
    if (value.isNotEmpty) _ailment = value;
  }

  set condition(String value) {
    _condition = value;
  }

  set admitted(bool value) {
    _admitted = value;
  }

  void getPatientInfo() {
    super.getInfo();
    print("Ailment: $_ailment");
    print("Condition: $_condition");
    print("Admitted: ${_admitted ? "Yes" : "No"}");
    print("---------------------------");
  }
}