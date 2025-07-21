import 'Person.dart';

class Nurse extends Person {
  String _department;
  double _salary;
  bool _onDuty;

  Nurse(String name,
      int age,
      String gender,
      String nationalId,
      String contactNumber,
      String address,
      String? email,
      this._department,
      this._salary,
      this._onDuty,) : super(
      name,
      age,
      gender,
      nationalId,
      contactNumber,
      address,
      email);


  String get department => _department;

  double get salary => _salary;

  bool get onDuty => _onDuty;


  set department(String value) {
    if (value.isNotEmpty) _department = value;
  }

  set salary(double value) {
    if (value >= 0) _salary = value;
  }

  set onDuty(bool value) {
    _onDuty = value;
  }

  void getNurseInfo() {
    super.getInfo();
    print("Department: $_department");
    print("Salary: \$${_salary.toStringAsFixed(2)}");
    print("On Duty: ${_onDuty ? "Yes" : "No"}");
    print("---------------------------");
  }
}