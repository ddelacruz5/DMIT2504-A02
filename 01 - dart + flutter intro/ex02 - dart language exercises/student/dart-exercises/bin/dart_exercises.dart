import 'package:dart_exercises/dart_exercises.dart' as dart_exercises;

class Student {
  String firstName = '';
  String lastName = '';
  int idNumber = 0;

  Student.empty() {
  }

  Student(String firstName, String lastName, int idNumber) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.idNumber = idNumber;
  }

  String getFirstName() {
    return firstName;
  }

  void setFirstName(String firstName) {
    this.firstName = firstName;
  }

  String getLastName() {
    return lastName;
  }

  void setLastName(String lastName) {
    this.lastName = lastName;
  }

  int getIdNumber() {
    return idNumber;
  }

  int setIdNumber(int idNumber) {
    this.idNumber = idNumber;
    return this.idNumber;
  }

  String getFullName() {
    return '$lastName, $firstName';
  }

}

void main(List<String> arguments) {
  Student jane = Student('Jane', 'Doe', 101);
  print(jane.getFullName());
  jane.setFirstName('JaneNewName');
  print(jane.getFullName());
}