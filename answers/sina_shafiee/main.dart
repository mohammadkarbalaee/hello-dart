import 'dart:io';

import 'questions.dart';
import 'utils.dart';

String? userName;
int userScore = 0;

void main() {
  clearConsole();
  customPrint('Welcome to football quiz app!', 'secondary');
  customPrint('Please enter your name:', 'primary');

  userName = stdin.readLineSync();
  bool isValidName = validateInput(userName);

  if (!isValidName) {
    exitProgram(message: 'Enter Valid Name!');
  }

  questions.shuffle();

  for (int i = 0; i < questions.length; i++) {
    String? answer;
    bool isValidInput = false;

    clearConsole();
    printNavBar(userName!, userScore);

    customPrint('Quiz ${i + 1}: ${questions[i]['question']}\n', 'primary');

    for (int j = 0; j < questions[i]['options'].length; j++) {
      customPrint(
          'answer ${j + 1}: ${questions[i]['options'][j]}', 'secondary');
    }

    while (!isValidInput) {
      answer = stdin.readLineSync();
      bool isValidNumber = validateInput(answer, type: 'number');

      if (isValidNumber) {
        int numericAnswer = int.parse(answer!);
        bool isValidAnswer = validateInput(numericAnswer,
            type: 'custom',
            condition: (value) =>
                value >= 1 && value <= questions[i]['options'].length);

        if (isValidAnswer) {
          isValidInput = true;
          bool isCorrectAnswer = validateInput(numericAnswer,
              type: 'custom',
              condition: (value) => value - 1 == questions[i]['correctAnswer']);

          if (isCorrectAnswer) {
            userScore++;
            customPrint('Well done! your anwer is correct.', 'success');
          } else {
            int answerIndex = questions[i]['correctAnswer'];
            String answer = questions[i]['options'][answerIndex];
            customPrint('Nice try! the correct answer is $answer.', 'error');
          }
        } else {
          print('Please enter a valid number within the range of options.');
        }
      } else {
        print('Please enter a valid number.');
      }
    }
    sleep(Duration(seconds: 1));
  }
  clearConsole();
  printNavBar(userName!, userScore);

  showResults(userScore);
  print('${'\n' * 4}');
}
