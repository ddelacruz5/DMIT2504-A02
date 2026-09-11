// 1. get user input for lookup word (stdin, via dart:json
// 2. I need a fuction to:
//    - attach that value to the end of a URL
//    - send a get request at that URL
//    - tries to return the JSON-decoded body of that
// 3. loop this until the user quits
// 4. create a class to represent the returned word

import 'dart:io';

void main() {
  String word = stdin.readLineSync()!;
}
