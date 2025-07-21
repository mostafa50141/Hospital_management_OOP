import 'Nurse.dart';
import 'Doctor.dart';
import 'Hospital.dart';
import 'Patient.dart';

void main() {
  Hospital hospital = Hospital("Sunrise Hospital", "Cairo");

  hospital.addDoctor(Doctor(
    "Dr. Rania",
    42,
    "Female",
    "29301011230111",
    "01011223344",
    "Nasr City",
    "rania@hospital.com",
    "Neurology",
    20000,
    9,
  ));

  hospital.addNurse(Nurse(
    "Mina Wadie",
    30,
    "Male",
    "29503111230123",
    "01099887766",
    "Maadi",
    "mina@nurse.com",
    "Emergency",
    7000,
    true,
  ));

  hospital.addPatient(Patient(
    "Ahmed Galal",
    50,
    "Male",
    "27001011230100",
    "01234567891",
    "Giza",
    "ahmed@gmail.com",
    "Hypertension",
    "Stable",
    true,
  ));

  hospital.getInfo();
  hospital.showAllPeople();
  Doctor.printDoctorCount();
}