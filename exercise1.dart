import 'dart:io';

int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

int multiply(int a, int b) {
  return a * b;
}

int divide(int a, int b) {
  if (b == 0) {
    throw ArgumentError("Cannot divide by zero");
  }
  return a ~/ b;
}

void main() {
  while (true) {
    print("\n=================");
    print("Simple Calculator");
    print("------------------");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("5. Exit");
    print("=================");

    stdout.write("Enter your choice: ");
    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    if (choice == 5) {
      print("Exiting...");
      break;
    }

    if (choice == null || choice < 1 || choice > 5) {
      print("Invalid choice. Please try again.");
      continue;
    }

    stdout.write("Enter first number: ");
    int? num1 = int.tryParse(stdin.readLineSync() ?? '');

    stdout.write("Enter second number: ");
    int? num2 = int.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null || num2 == null) {
      print("Invalid input! Please enter valid integer numbers.");
      continue;
    }

    switch (choice) {
      case 1:
        print("Result: ${add(num1, num2)}");
        break;
      case 2:
        print("Result: ${subtract(num1, num2)}");
        break;
      case 3:
        print("Result: ${multiply(num1, num2)}");
        break;
      case 4:
        try {
          print("Result: ${divide(num1, num2)}");
        } catch (e) {
          print("Error: ${e.toString().split(': ').last}");
        }
        break;
    }
  }
}
