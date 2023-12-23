# Getting Started with Dart Programming

Welcome to the world of Dart programming! This guide will help you get started with the basics of programming and Dart using DartPad.

## Table of Contents

1. [Introduction to Programming](#1-introduction-to-programming)
2. [Variables and Data Types](#2-variables-and-data-types)
3. [Control Flow](#3-control-flow)
4. [Functions](#4-functions)
5. [Lists/Arrays](#5-listsarrays)
6. [User Input](#6-user-input)
7. [Setting Up DartPad](#7-setting-up-dartpad)
8. [Writing Your First Dart Program](#8-writing-your-first-dart-program)
9. [Data Types in Dart](#9-data-types-in-dart)
10. [Control Flow in Dart](#10-control-flow-in-dart)
11. [Functions in Dart](#11-functions-in-dart)
12. [Lists in Dart](#12-lists-in-dart)
13. [User Interaction in Dart](#13-user-interaction-in-dart)
14. [Simple Exercises](#14-simple-exercises)
15. [Explore Dart Documentation](#15-explore-dart-documentation)

## 1. Introduction to Programming

Programming is the process of writing instructions for a computer to perform a task. Let's dive into the basics of programming!

## 2. Variables and Data Types

In Dart, variables store data. Data types include int, double, String, and bool.

```dart
void main() {
  // Variable declaration and initialization
  int age = 25;
  double height = 5.9;
  String name = "John";
  bool isStudent = true;

  // Outputting values
  print("Name: $name, Age: $age, Height: $height, Student: $isStudent");
}
```

## 3. Control Flow

Use if statements for decision-making and loops for repetition.

```dart
void main() {
  // Control flow with if statement
  bool isRaining = true;

  if (isRaining) {
    print("Bring an umbrella!");
  } else {
    print("Enjoy the weather!");
  }

  // Looping with for loop
  for (int i = 0; i < 5; i++) {
    print("Count: $i");
  }
}
```

## 4. Functions

Functions are blocks of code that perform a specific task. They can take parameters and return values.

```dart
void main() {
  // Function declaration and call
  greet("Alice");
}

// Function definition
void greet(String name) {
  print("Hello, $name!");
}
```

## 5. Lists/Arrays

Lists store multiple items. Access and modify list elements.

```dart
void main() {
  // List declaration and initialization
  List<String> fruits = ["Apple", "Banana", "Orange"];

  // Accessing list elements
  print("First fruit: ${fruits[0]}");

  // Modifying list
  fruits.add("Grapes");
  print("Fruits: $fruits");
}
```

## 6. User Input

Get user input and use it in your program.

```dart
void main() {
  // User input
  print("Enter your name:");
  String userName = stdin.readLineSync();
  print("Hello, $userName!");
}
```

## 7. Setting Up DartPad

1. Open your web browser.
2. Go to [DartPad](https://dartpad.dev/).

## 8. Writing Your First Dart Program

Open DartPad and write your first Dart program.

```dart
void main() {
  print("Hello, DartPad!");
}
```

Click "Run" to see the output.

## 9. Data Types in Dart

Understand Dart data types.

```dart
void main() {
  int age = 25;
  double height = 5.9;
  String name = "John";
  bool isStudent = true;
}
```

## 10. Control Flow in Dart

Use if statements and loops in Dart.

```dart
void main() {
  bool isRaining = true;

  if (isRaining) {
    print("Bring an umbrella!");
  } else {
    print("Enjoy the weather!");
  }

  for (int i = 0; i < 5; i++) {
    print("Count: $i");
  }
}
```

## 11. Functions in Dart

Learn how to declare and use functions in Dart.

```dart
void main() {
  greet("Alice");
}

void greet(String name) {
  print("Hello, $name!");
}
```

## 12. Lists in Dart

Explore lists in Dart.

```dart
void main() {
  List<String> fruits = ["Apple", "Banana", "Orange"];

  print("First fruit: ${fruits[0]}");

  fruits.add("Grapes");
  print("Fruits: $fruits");
}
```

## 13. User Interaction in Dart

Get user input and display results.

```dart
void main() {
  print("Enter your name:");
  String userName = stdin.readLineSync();
  print("Hello, $userName!");
}
```

## 14. Simple Exercises

Try these simple exercises to reinforce your learning:

1. Write a program to calculate the sum of two numbers.
2. Create a list of your favorite movies and print them.

## 15. Explore Dart Documentation

Visit the [Dart documentation](https://dart.dev/guides) to learn more about Dart and explore additional features.

Happy coding!
---

Feel free to customize the README to fit your specific teaching style and add or modify content based on your students' needs. This README provides a structured introduction to Dart programming with code samples for each concept.
