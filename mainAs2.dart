import 'dart:math';

void main() {
  // var n1 = [2, 1, 5, 3, 8, 6];
  // for (var number1 in n1) {
  //   if (number1 % 2 == 0) {
  //     print(number1);
  //   }
  // }
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

  var n4 = [2, 4, 1, 5, 3];
  int largest = n4[0];
  for (int num4 in n4) {
    if (num4 > largest) {
      largest = num4;
    }
  }
  print("The largest element of the array is $largest");

  int n5 = 5;
  for (int i = 1; i <= 10; i++) {
    print('$n5 X $i = ${i * n5}');
  }

  // var n7 = 4;
  // int i, j;
  // for (i = 0; i <= n7; i++) {
  //   // print(i);
  //   for (j = 1; j <= i; j++) {
  //     var k = i + j;
  //     print(k);
  //   }
  // }

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

  var n7 = 4;
  for (var i = 1; i <= n7; i++) {
    String line = '';
    for (var j = 1; j <= i; j++) {
      line += i.toString();
      // print(i);
    }
    print(line); // Add this line to move to the next row
  }

  var n8 = [2, 8, 3, 10, 6, 4, 12];
  for(var num in n8){
    if(num>5){
      print("$num is greater than five.");}else{
        print("$num is lesser or equal to five.") ;}}



        
    }


