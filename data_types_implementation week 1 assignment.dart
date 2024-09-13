// ignore_for_file: unused_local_variable, duplicate_ignore

void main() {
  // Define variables
  // ignore: unused_local_variable
  int myInt = 10;
  double myDouble = 10.5;
  String myString = "Hello, Everyone!";
  bool myBool = true;
  List<int> myList = [9, 22, 31, 48, 15];

  // Type Conversion
  stringToIntAndDouble("123");
  intToStringAndDouble(42);

  // Conversion and display function
  convertAndDisplay("456");

  // Control flow examples
  checkNumber(-5);
  checkVotingEligibility(19);
  printDayOfWeek(4);

  // Loops
  forLoopExample();
  whileLoopExample();
  doWhileLoopExample();

  // Complex Example
  processList([7, 35, 150, 3]);
}

void stringToIntAndDouble(String input) {
  try {
    int intValue = int.parse(input);
    double doubleValue = double.parse(input);
    print("String '$input' as int: $intValue, as double: $doubleValue");
  } catch (e) {
    print("Error: $e");
  }
}

void intToStringAndDouble(int input) {
  String stringValue = input.toString();
  double doubleValue = input.toDouble();
  print("Int $input as String: '$stringValue', as double: $doubleValue");
}

void convertAndDisplay(String input) {
  try {
    int intValue = int.parse(input);
    double doubleValue = double.parse(input);
    print("String '$input' as int: $intValue, as double: $doubleValue");
  } catch (e) {
    print("Error converting '$input': $e");
  }
}

void checkNumber(int number) {
  if (number > 0) {
    print("$number is positive");
  } else if (number < 0) {
    print("$number is negative");
  } else {
    print("$number is zero");
  }
}

void checkVotingEligibility(int age) {
  if (age >= 18) {
    print("Eligible to vote");
  } else {
    print("Not eligible to vote");
  }
}

void printDayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoopExample() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

void processList(List<int> numbers) {
  for (int number in numbers) {
    print("Number: $number");
    if (number % 2 == 0) {
      print("$number is even");
    } else {
      print("$number is odd");
    }

    if (number >= 1 && number <= 10) {
      print("$number is small");
    } else if (number >= 11 && number <= 100) {
      print("$number is medium");
    } else {
      print("$number is large");
    }
  }
}
