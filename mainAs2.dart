import 'dart:io';
import 'dart:math';

void main() {
  // Question no: 01
  var n1 = [2, 1, 5, 3, 8, 6];
  for (var number1 in n1) {
    if (number1 % 2 == 0) {
      print("// Question no:01 output  $number1");
    }
  }

  // Question no: 02
  void fibonacci(n2) {
    int a = 0, b = 1;
    for (int i = 0; a <= n2; i++) {
      print(a);
      int c = a + b;
      a = b;
      b = c;
    }
  }

  int n2 = 10;
  fibonacci(n2);

// Question no: 03

  bool isPrime(n3) {
    if (n3 <= 1) {
      return false;
    }
    for (int i = 2; i * i <= n3; i++) {
      if (n3 % i == 0) {
        return false;
      }
    }
    return true;
  }

  int n3 = 17;
  isPrime(n3);
  isPrime(n3) ? print("$n3 is prime number") : print("$n3 i not a prime numbr");
// Question no: 04
  var n4 = [2, 4, 1, 5, 3];
  int largest = n4[0];
  for (int num4 in n4) {
    if (num4 > largest) {
      largest = num4;
    }
  }
  print("The largest element of the array is $largest");
// Question no: 05
  int n5 = 5;
  for (int i = 1; i <= 10; i++) {
    print('$n5 X $i = ${i * n5}');
  }
// Question no: 06
  var palidrome = "radar";
  var rev = '';
  for (var i = palidrome.length - 1; i >= 0; i--) {
    rev += palidrome[i];
  }
  if (palidrome == rev) {
    print("given string is palidrome");
  } else {
    print("given string is not palidrome");
  }
  // Question no: 07

  var n7 = 4;
  for (var i = 1; i <= n7; i++) {
    String line = '';
    for (var j = 1; j <= i; j++) {
      line += i.toString();
    }
    print(line);
  }
// Question no: 08
  var n8 = [2, 8, 3, 10, 6, 4, 12];
  for (var num in n8) {
    if (num > 5) {
      print("$num is greater than five.");
    } else {
      print("$num is lesser or equal to five.");
    }
  }
// Question no: 09

  String inputString = "Hello, World!";
  int vowelCount = 0;

  for (int i = 0; i < inputString.length; i++) {
    var char = inputString[i].toLowerCase();

    if (char == 'a' ||
        char == 'e' ||
        char == 'i' ||
        char == 'o' ||
        char == 'u') {
      vowelCount++;
    }
  }

  print("Number of vowels in the string: $vowelCount");

// Question no: 10
  List<int> numbers10 = [10, 5, 20, 8, 15];
  int max = numbers10[0];
  int min = numbers10[0];

  for (int i = 1; i < numbers10.length; i++) {
    if (numbers10[i] > max) {
      max = numbers10[i];
    }
    if (numbers10[i] < min) {
      min = numbers10[i];
    }
  }

  print("Maximum element in the list: $max");
  print("Minimum element in the list: $min");

// Question no: 11

  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  int sumOfSquares = 0;

  for (int number in numbers) {
    if (number % 2 != 0) {
      sumOfSquares += (number * number);
    }
  }

  print(" sumOfSquares of all odd numbers is $sumOfSquares");
// Question no: 12
  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'Ali',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Sara',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Rahsid',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];

  for (var student in studentDetails) {
    String name = student['name'];
    List<int> marks = student['marks'];
    double average = calculateAverage(marks);
    String grade = calculateGrade(average);
    print('$name (Roll Number: ${student['rollNumber']}) - Grade: $grade');
  }
}

double calculateAverage(List<int> marks) {
  double total = marks.reduce((a, b) => a + b).toDouble();
  return total / marks.length;
}

String calculateGrade(double average) {
  if (average >= 90) {
    return 'A+';
  } else if (average >= 80) {
    return 'A';
  } else if (average >= 70) {
    return 'B';
  } else if (average >= 60) {
    return 'C';
  } else {
    return 'F';
  }

// Question no: 13
  var n13 = [-4, 3, -5, 4, -56, 77, 32, -23];
  var nm = [];

  for (var nn in n13) {
    if (nn < 0) {
      nm.add(nn);
    }
  }

  print("Negative numbers in n13: $nm");

// Question no: 14
  var userCredentials = [
    {'email': 'kehan@gmail.com', 'password': '1234'},
    {'email': 'meer@gmail.com', 'password': '4567'},
    {'email': 'sabeel@gmail.com', 'password': '7890'},
  ];
  String prompt(String promptText) {
    print(promptText);
    return stdin.readLineSync() ?? '';
  }

  for (int attempts = 1; attempts < 3; attempts++) {
    var userEmail = prompt("enter your email here:");
    var userPass = prompt("enter your password here:");
    var login = false;
    for (var credin in userCredentials) {
      if (userEmail == credin['email'] && userPass == credin['password']) {
        login = true;
      }
    }
    if (login) {
      print("Loggin succesfully");
      print("total attempts:$attempts");
      break;
    } else {
      print("incorrect user email and pass");
    }
  }
}
