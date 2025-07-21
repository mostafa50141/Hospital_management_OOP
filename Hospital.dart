import 'Doctor.dart';
import 'Nurse.dart';
import 'Patient.dart';

class Hospital {
  String _name;
  String _location;
  List<Doctor> _doctors = [];
  List<Nurse> _nurses = [];
  List<Patient> _patients = [];

  Hospital(this._name, this._location);

  void getInfo() {
    print(" Hospital: $_name");
    print(" Location: $_location");
    print(" Doctors: ${_doctors.length}");
    print(" Nurses: ${_nurses.length}");
    print(" Patients: ${_patients.length}");
    print("===========================");
  }

  void addDoctor(Doctor doctor) => _doctors.add(doctor);
  void addNurse(Nurse nurse) => _nurses.add(nurse);
  void addPatient(Patient patient) => _patients.add(patient);

  void showAllPeople() {
    print("\n--- All Doctors ---");
    for (var d in _doctors) {
      d.getDocInfo();
    }

    print("\n--- All Nurses ---");
    for (var n in _nurses) {
      n.getNurseInfo();
    }

    print("\n--- All Patients ---");
    for (var p in _patients) {
      p.getPatientInfo();
    }
  }
}