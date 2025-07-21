abstract class Person {
  String _name;
  int _age;
  String _gender;
  String _nationalId;
  String _contactNumber;
  String _address;
  String? _email;

  Person(
      this._name,
      this._age,
      this._gender,
      this._nationalId,
      this._contactNumber,
      this._address,
      [this._email,]);


  String get name => _name;
  int get age => _age;
  String get gender => _gender;
  String get nationalId => _nationalId;
  String get contactNumber => _contactNumber;
  String get address => _address;
  String? get email => _email;


  set contactNumber(String value) {
    if (value.length >= 10) {
      _contactNumber = value;
    }
  }

  set email(String? value) {
    if (value == null || value.contains('@')) {
      _email = value;
    }
  }

  void getInfo() {
    print("Name: $_name");
    print("Age: $_age");
    print("Gender: $_gender");
    print("National ID: $_nationalId");
    print("Contact: $_contactNumber");
    print("Address: $_address");
    if (_email != null) {
      print("Email: $_email");
    }
  }
}