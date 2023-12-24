import 'dart:io';
void main() {
  print("Enter number A:");
  String? numberA = stdin.readLineSync();
  print("Enter number B:");
  String? numberB = stdin.readLineSync();
  print('Sum is: ${int.parse(numberA!) + int.parse(numberB!)}');
}


