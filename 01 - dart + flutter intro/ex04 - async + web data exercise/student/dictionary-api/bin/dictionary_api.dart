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
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async {
  while (true) {
    print('Enter a word (or quit to exit):');
    String? input = stdin.readLineSync();

    if (input == 'quit') {
      print('You typed $input. Goodbye.');
      break;
    }

    String url = 'https://api.dictionaryapi.dev/api/v2/entries/en/$input';
    Uri myUri = Uri.parse(url);

    var response = await http.get(myUri);

    if (response.statusCode == 200) {
      print('Success! Got data.');
      print(response.body);
    } else {
      print('Something went wrong. Status: ${response.statusCode}');
    }

    print('You typed: $input');
  }
}
