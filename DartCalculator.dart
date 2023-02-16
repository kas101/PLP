import 'dart:io';

//function to perform Addition logic
void add() {
  print('You chose Addition');
  print('''Enter your numbers
type "end" at last to stop\n''');

  String num;
  String done = 'no';
  //store input numbers
  List enteredNumbers = [];
  //continue accepting input unless user ends
  while (!done.contains('end')) {
    num = stdin.readLineSync().toString();
    if (num.contains('end')) {
      done = 'end';
      break;
    }
//keeping adding values to list
    enteredNumbers.add(num);
  }

//check if entered number is double or integer
  if (enteredNumbers.any((element) => element.toString().contains('.'))) {
    double total = 0;
    for (var digit in enteredNumbers) {
      //convert each number in list to double
      total += double.parse(digit);
    }
    print(enteredNumbers);
    print('Answer is: $total');
  } else {
    int total = 0;
    for (var digit in enteredNumbers) {
      //convert each number in list to int
      total += int.parse(digit);
    }
    print(enteredNumbers);
    print('Answer is: $total');
  }
}

//function to perform subraction logic
void subtract() {
  print('You chose Subtraction');
  print('''Enter your numbers
type "end" at last to stop\n''');

  String num;
  String done = 'no';
  //store input numbers
  List enteredNumbers = [];
  //continue accepting input unless user ends
  while (!done.contains('end')) {
    num = stdin.readLineSync().toString();
    if (num.contains('end')) {
      done = 'end';
      break;
    }
//keeping adding values to list
    enteredNumbers.add(num);
  }

//check if entered number is double or integer
  if (enteredNumbers.any((element) => element.toString().contains('.'))) {
    late double total;
    double initVal = double.parse(enteredNumbers[0]);
    for (var i = 0; i < enteredNumbers.length; i++) {
      //convert each number in list to double
      total = initVal +
          (double.parse(enteredNumbers[i]) - double.parse(enteredNumbers[0]));
    }
    print(enteredNumbers);
    print('Answer is: $total');
  } else {
    late int total;
    int initVal = int.parse(enteredNumbers[0]);
    for (var i = 0; i < enteredNumbers.length; i++) {
      //convert each number in list to int
      total = initVal +
          (int.parse(enteredNumbers[i]) - int.parse(enteredNumbers[0]));
    }
    print(enteredNumbers);
    print('Answer is: $total');
  }
}

//function to perform multiplication logic
void multiply() {
  print('You chose Multiplication');
  print('''Enter your numbers
type "end" at last to stop\n''');

  String num;
  String done = 'no';
  //store input numbers
  List enteredNumbers = [];
  //continue accepting input unless user ends
  while (!done.contains('end')) {
    num = stdin.readLineSync().toString();
    if (num.contains('end')) {
      done = 'end';
      break;
    }
//keeping adding values to list
    enteredNumbers.add(num);
  }

//check if entered number is double or integer
  if (enteredNumbers.any((element) => element.toString().contains('.'))) {
    double total = 1;
    for (var digit in enteredNumbers) {
      //convert each number in list to double
      total *= double.parse(digit);
    }
    print(enteredNumbers);
    print('Answer is: $total');
  } else {
    int total = 1;
    for (var digit in enteredNumbers) {
      //convert each number in list to int
      total *= int.parse(digit);
    }
    print(enteredNumbers);
    print('Answer is: $total');
  }
}

//function to do division logic
void divide() {
  print('You chose Division');
  print('''Enter your numbers
type "end" at last to stop\n''');

  String num;
  String done = 'no';
  //store input numbers
  List enteredNumbers = [];
  //continue accepting input unless user ends
  while (!done.contains('end')) {
    num = stdin.readLineSync().toString();
    if (num.contains('end')) {
      done = 'end';
      break;
    }
//keeping adding values to list
    enteredNumbers.add(num);
  }

//check if entered number is double or integer
  if (enteredNumbers.any((element) => element.toString().contains('.'))) {
    late double total;
    double initVal = double.parse(enteredNumbers[0]);
    for (var i = 0; i < enteredNumbers.length; i++) {
      //convert each number in list to double
      total = (initVal / double.parse(enteredNumbers[i])) *
          double.parse(enteredNumbers[i]);
    }
    print(enteredNumbers);
    print('Answer is: $total');
  } else {
    late double total;
    double initVal = double.parse(enteredNumbers[0]);
    for (var i = 0; i < enteredNumbers.length; i++) {
      //convert each number in list to double
      total = (initVal / double.parse(enteredNumbers[i])) /
          (initVal * double.parse(enteredNumbers[i]) / initVal);
    }
    print(enteredNumbers);
    print('Answer is: $total');
  }
}

void main(List<String> args) {
  //prompt user with welcome message and menu
  print('WELCOME TO THE DART CALULATOR \n');
  print('Please choose an arithmatic operation to do.\n');
  print('''
  1.Addition
  2.Subtraction
  3.Multiplication
  4.Division''');

  //prompt user and read input
  print('Enter Your Choice (1-5)');
  String selected = stdin.readLineSync().toString();

  //convert input to integer
  int choice = int.parse(selected);

  //iterate through the options
  switch (choice) {
    case 1:
      add();
      break;
    case 2:
      subtract();
      break;
    case 3:
      multiply();
      break;
    case 4:
      divide();
      break;
    default:
      print('Your choice is not available');
  }
}
