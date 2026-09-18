import 'package:dart_exercises/dart_exercises.dart' as dart_exercises;

import 'dart:io';

// The dreaded Constructor
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
  // This is my list of students
  List<Student> roster = [];

  // Main while Loop
  bool running = true;
  while (running) {
    print('1. Add a Student');
    print('2. Do thing B');
    print('3. Quit');

    String? input = stdin.readLineSync();

    if (input != null) {
      // parsing the input string to an int
      int? choice = int.tryParse(input);
      // if "choice" is valid
      if (choice != null) {
        switch (choice) {
          // Case 1: Adding a Student
          case 1:
            // Create a new Student object using the constructor
            // Add the new Student to the roster
            if (roster.length < 25) {
              // Prompt the user for a first name
              print('Enter first name:');
              String? firstName = stdin.readLineSync();
              // Prompt the user for a last name
              print('Enter a last name:');
              String? lastName = stdin.readLineSync();
              // Prompt user for ID number
              print('Enter ID Number:');
              String? idNumber = stdin.readLineSync();
              if (idNumber != null) {
                // Parsing ID number into an int
                int? intIdNumber = int.tryParse(idNumber);
                // Ensuring first name, last name and ID number are not null
                if (firstName != null &&
                    lastName != null &&
                    intIdNumber != null) {
                  print('Ready to create student...');
                  Student newStudent = Student(firstName, lastName, intIdNumber);
                  roster.add(newStudent);
                  print('New student created');
                } else {
                  print ('Please enter a valid number.');
                }
              } else {
                print('Please enter a valid number.');
              }
            } else {
              print('Roster is full');
            }
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
        // if "choice" is something stupid
      } else {
        print('Please enter a valid option');
      }
      // if "choice" is empty/null
    } else {
      print('Please enter something');
    }
  }
}
