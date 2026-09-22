// Get input from the user: How many values to pick, and the range
// Create storage for the picked values, sized appropriately
// Generate random numbers within range
// Check for duplicates before accepting a number into the pick
// Display the result

import 'dart:io';
import 'dart:math';

void main(List<String> arguments) {
  int? intValue;
  int? intRange;

  // Get input from user
  print('Enter the number of values');
  String? inputValue = stdin.readLineSync();
  print('Enter the range');
  String? inputRange = stdin.readLineSync();
  // Check input is not null
  if (inputValue != null && inputRange != null) {
    intValue = int.tryParse(inputValue);
    intRange = int.tryParse(inputRange);
    // storage
    if (intValue != null && intRange != null) {
      List<int> lotteryNumbers = List.filled(intValue, 0);
      // Creating a Random Object
      Random random = Random();
      // Assigning into a list slot
      for (int i = 0; i < intValue; i++) {
        // Generate a random number
        int candidate = random.nextInt(intRange) + 1;
        // Check if number already exists somewhere in 'lotteryNumbers'
        // If yes -> Generate a new number
        while (lotteryNumbers.contains(candidate)) {
          candidate = random.nextInt(intRange) + 1;
        }
        // If no -> move to next slot
        lotteryNumbers[i] = candidate;
      }
      print(lotteryNumbers.join(" "));
    } else {
      print('Please enter a valid number.');
    }
  } else {
    print('values are null.');
  }
}
