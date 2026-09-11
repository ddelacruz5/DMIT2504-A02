// function that:
//  - Takes a string input (word lookup)
//  - Places it into the base string for the dictionary API
//  - Generates a new Uri instance for the URL
//  - makes an http GET request tot he URL (needs dart: http library)
//  - attemps to decode the body of that response into JSON & returns that data

// two options
//  - generic fuction to request from a URL and parse JSON
//  - specific fuction to take a word and return its definition
//  - we will be doing option 1

Future<dynamic> getJSON(String url) async {
  // We want all our HTTP interaction to be async, so we return a Future<someType>,
  // and valid JSON can start with a variety of data types, so we use the "dynamic" type
  // to tell the compiler it could be anything.

  // 1. parse URL string as Uri
  // 2. make HTTP request & get response
  // 3. return JSON
}
String API_BASE_URL = 'https://freedictionaryapi.com/api/v1/entries/en/';

Future<String> getDictionaryDefinition(String word) async {
  // this function must also be asyc, because get JSON() is async

  // ... logic
  String definition = // ??;
  return definition;
}
