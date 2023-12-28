import 'dart:io';
import 'dart:math';

import 'answer_sheet.dart';

void main() {
  int score = 0;
  int questionNO = 0;

  greetingUser();

  List<int> randomIndexList = generateRandomIndexes();

  for (var index in randomIndexList) {
    questionNO = questionNO + 1;
    final Map<String, dynamic> data = AnswerSheet.data[index];
    print('------------------------------------------- \n');
    print('Q$questionNO ${data[AnswerSheetFields.question]}');
    print('1) ${data[AnswerSheetFields.choices][0]}');
    print('2) ${data[AnswerSheetFields.choices][1]}');
    print('3) ${data[AnswerSheetFields.choices][2]}');
    print('4) ${data[AnswerSheetFields.choices][3]}');
    final String userAnswer = stdin.readLineSync()!;
    print('your answer is: $userAnswer');

    score = score + checkTheAnswer(userAnswer, data);
  }
  showTheResult(score);
}

void greetingUser() {
  print('Welcome to this challenge, what is your nickname?');
  late String userName;

  for (var i = 0; i < 1; i++) {
    userName = stdin.readLineSync()!;
    if (userName.isEmpty) {
      print(
          'I need to know your nickname, please try again and tell your nickname');
      i--;
    }
  }

  print('It\'s nice to see you, $userName! Let\'s begin... \n');
  print('Please choose the correct answer:');
}

List<int> generateRandomIndexes() {
  List<int> result = [];
  Random random = Random();

  for (var i = 0; i < 10; i++) {
    final int randomInt = random.nextInt(10);
    if (!result.contains(randomInt)) {
      result.add(randomInt);
    } else {
      i--;
    }
  }
  return result;
}

int checkTheAnswer(String userAnswer, Map<String, dynamic> data) {
  final List<String> choices = data[AnswerSheetFields.choices];
  final String answer = data[AnswerSheetFields.answer];
  final int index = choices.indexOf(answer);

  if (answer.toLowerCase() == userAnswer.toLowerCase() ||
      '${index + 1}' == userAnswer) {
    print('Correct! well done...');
    return 1;
  } else {
    print('Wrong! The answer was $answer');
    return 0;
  }
}

void showTheResult(int score) {
  print('***************************************************************');
  print('Congratulations, it\'s done! Your final score is $score from 10 \n');
}
