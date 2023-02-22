import 'dart:io';

/**
 * THIS AN ASSIGNMENT ON DART FUNCTIONS IN WEEK2
 */
//Functions to add two numbers, whole or decimal numbers

double addTwo(double a, double b) {
  return (a + b);
}

//Function to subtract two numbers,whole or decimal numbers
double subtractTwo(double a, double b) {
  print('Answer:');
  return (a - b);
}

//Function to divide two numbers,hole or decimal numbers
double divideTwo(double a, double b) {
  print('Answer:');
  return (a / b);
}

//Function to multiply two numbers,whole or decimal numbers
double multiplyTwo(double a, double b) {
  print('Answer:');
  return (a * b);
}

// function to return length of string
stringLength(String a) {
  return a.length;
}

//Function to return first element in List
getFirstElement(List a) {
  String result = a.elementAt(0);
  return result;
}

void main(List<String> args) {
  var end;
  do {
    //Welcome user and show them menu
    print('What would you like to do?');
    print('1.Add Two Numbers');
    print('2.Subtract Two Numbers');
    print('3.Divide Two Numbers');
    print('4.Multiply Two Numbers');
    print('5.Get String Length');
    print('6.Get First Element in List');
    var choice = stdin.readLineSync().toString();
    switch (int.tryParse(choice)) {
      case 1:
        print('Enter Two Numbers to Add\n');
        print('First');
        var a = stdin.readLineSync().toString();
        print('second');
        var b = stdin.readLineSync().toString();
        var answer = addTwo(double.parse(a), double.parse(b));
        print('Answer:$answer');
        break;
      case 2:
        print('Enter Two Numbers to Subtract\n');
        print('First');
        var a = stdin.readLineSync().toString();
        print('second');
        var b = stdin.readLineSync().toString();
        var answer = subtractTwo(double.parse(a), double.parse(b));
        print('Answer:$answer');
        break;
      case 3:
        print('Enter Two Numbers to Divide\n');
        print('First');
        var a = stdin.readLineSync().toString();
        print('second');
        var b = stdin.readLineSync().toString();
        var answer = divideTwo(double.parse(a), double.parse(b));
        print('Answer:$answer');
        break;
      case 4:
        print('Enter Two Numbers to Multiply\n');
        print('First');
        var a = stdin.readLineSync().toString();
        print('second');
        var b = stdin.readLineSync().toString();
        var answer = multiplyTwo(double.parse(a), double.parse(b));
        print('Answer:$answer');
        break;
      case 5:
        print('Enter a String\n');
        var a = stdin.readLineSync().toString();
        var answer = stringLength(a);
        print('String Length is:$answer');
        break;
      case 6:
        print('Enter a List of Items\n');
        print('''
         press enter after each item,
         and type "done" when you finish typing the list''');

        String list;
        String finished = 'no';
        List items = [];
        while (!finished.contains('done')) {
          list = stdin.readLineSync().toString();
          items.add(list);
          if (list.contains('done')) {
            finished = 'done';
          }
        }

        if (finished == 'done') {
          var answer = getFirstElement(items);
          print('list:$items');
          print('First item in list is: $answer');
        }

        break;
      default:
        print('Your choice is not available');
    }
    print('Would You like to make a another choice?');
    end = stdin.readLineSync();
  } while (end != 'no');
}
