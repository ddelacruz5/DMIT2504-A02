import 'package:dart_exercises/dart_exercises.dart' as dart_exercises;

import 'dart:io';

class Student {
  String firstName = '';
  String lastName = '';
  int idNumber = 0;

  Student.empty() {}

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
  List<Student> roster = [];

  bool running = true;
  while (running) {
    print('1. Do thing A');
    print('2. Do thing B');
    print('3. Quit');

    String? input = stdin.readLineSync();

    if (input != null) {
      int? choice = int.tryParse(input);
      if (choice != null) {
        switch (choice) {
          case 1:
            print('You picked one');
            break;
          case 2:
            print('You picked two');
            break;
          case 3:
            print('Exiting...');
            running = false;
            break;
          default:
            print('Unrecognized Input.');
        }
      } else {
        print('Please enter a valid option');
      }
    } else {
      print('Please enter a valid option');
    }
  }
}
