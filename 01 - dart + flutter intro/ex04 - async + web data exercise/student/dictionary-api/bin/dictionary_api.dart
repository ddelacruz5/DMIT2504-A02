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

// IMPORTS
import 'dart:io';
import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> main() async { 
  // "Future" is a promise saying 'i don't have anything yet, but i will later.'
  // To 'unwrap' a Future and get a real value when it's ready, you mark the fuction as asyc
  while (true) { // Looping until the user quits
    print('Enter a word (or quit to exit):');
    String? input = stdin.readLineSync();

    if (input == 'quit') {
      print('Goodbye.');
      break;
    }

    //http packge turns webaddresses into Uri objects.
    // they can be built using Uri.Parse(), which takes a string and turns it into a proper URL
    String url = 'https://api.dictionaryapi.dev/api/v2/entries/en/$input';
    Uri myUri = Uri.parse(url);

    var response = await http.get(myUri);
    // after async, use the 'await' keyword when calling.
    // 'await' is saying 'pause, don't run the next line until this finishes.'

    if (response.statusCode == 200) {
      // JSON parsing hell. Maybe ask Oliver about this
      // The API returns a list of entires, each entry is a map(key-value pairs)
      var data = jsonDecode(response.body);
      var firstEntry = data[0];
      var meanings = firstEntry['meanings'];
      var firstMeaning = meanings[0];
      var definitions = firstMeaning['definitions']; // list of definition objects
      var firstDefinitionObject = definitions[0]; // the first one (still a map)
      var definitionText = firstDefinitionObject['definition']; // now it's the plain text
      
      // makin it look pretty
      print('Word'.padRight(15) + 'Definition');
      print('-' * 50);
      print('$input'.padRight(15) + '$definitionText');
    } else {
      print('Something went wrong. Status: ${response.statusCode}');
    }
  }
}
