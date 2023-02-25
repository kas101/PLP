//DART ASSIGNMENT ON CONTROL FLOW

import 'dart:io';

void main(List<String> args) {
  print('Please enter a number: ');
  String input = stdin.readLineSync().toString();
  double number = double.parse(input);

  if (number < 10) {
    print('Your number is less than 10');
  } else if (number == 10) {
    print('Your number is equal to 10');
  } else {
    print('Your number is greater than 10');
  }
}
