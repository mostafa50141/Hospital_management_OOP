import 'Person.dart';

class Doctor extends Person {
  static int doctorCount = 0;

  String _specialization;
  double _salary;
  int _workingHours;

  Doctor(
      String name,
      int age,
      String gender,
      String nationalId,
      String contactNumber,
      String address,
      String? email,
      this._specialization,
      this._salary,
      this._workingHours,
      ) : super(name, age, gender, nationalId, contactNumber, address, email) {
    doctorCount++;
  }


  String get specialization => _specialization;
  double get salary => _salary;
  int get workingHours => _workingHours;


  set specialization(String value) {
    if (value.isNotEmpty) _specialization = value;
  }

  set salary(double value) {
    if (value >= 0) _salary = value;
  }

  set workingHours(int hours) {
    if (hours > 0) _workingHours = hours;
  }

  void getDocInfo() {
    super.getInfo();
    print("Specialization: $_specialization");
    print("Salary: \$${_salary.toStringAsFixed(2)}");
    print("Working Hours: $_workingHours hours/day");
    print("---------------------------");
  }

  static void printDoctorCount() {
    print("Total Doctors: $doctorCount");
  }
}