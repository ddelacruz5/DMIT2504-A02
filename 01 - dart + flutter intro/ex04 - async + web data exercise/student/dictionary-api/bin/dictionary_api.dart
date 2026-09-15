// START program

// LOOP forever
//     PRINT "Enter a word to search (or type 'quit' to exit):"
//     READ userInput

//     IF userInput equals "quit"
//         BREAK out of loop

//     BUILD the full URL by joining base endpoint + userInput

//     SEND a GET request to that URL and WAIT for the response

//     IF response was successful
//         DECODE the response body from JSON text into Dart data
//         DIG INTO the data to find the first definition
//         PRINT the word and definition in a table-like format
//     ELSE
//         PRINT an error message (word not found, etc.)

// END LOOP

// PRINT "Goodbye!"

// END program

import 'dart:io';

void main() {
  while (true) {
      print('Enter a word (or quit to exit):');
      String? input = stdin.readLineSync();

      if (input == 'quit') {
        print('You typed $input. Goodbye.');
        break;
      }

      print ('You typed: $input');
  }
}
