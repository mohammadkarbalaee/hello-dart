import 'dart:io';

void main() {
  List questions = [
    {
      'question': 'What widget is used to display a simple text in Flutter?',
      'options': ['TextWidget', 'Label', 'TextView', 'Text'],
      'answer': 4
    },
    {
      'question':
          'What widget in Flutter displays a button and supports click events?',
      'options': ['Button', 'FlatButton', 'RaisedButton', 'ClickableWidget'],
      'answer': 3
    },
    {
      'question': 'How can you display an image in Flutter?',
      'options': ['ImageView', 'ImageWidget', 'Image', 'Picture'],
      'answer': 3
    },
    {
      'question': 'How can you create a horizontal list of widgets in Flutter?',
      'options': ['ListView', 'HorizontalList', 'Row', 'Column'],
      'answer': 3
    },
    {
      'question': 'What is the main creator of the Flutter framework?',
      'options': ['Google', 'Apple', 'Microsoft', 'Facebook'],
      'answer': 1
    },
    {
      'question': 'How can you hide a widget in Flutter?',
      'options': [
        'setVisible(false)',
        'setHidden(true)',
        'setVisibility(false)',
        'Visibility(hidden: true)'
      ],
      'answer': 4
    },
    {
      'question':
          'How can you align a widget to one side of the screen in Flutter?',
      'options': ['Align', 'Attach', 'Stick', 'Position'],
      'answer': 1
    },
    {
      'question': 'How can you run an animation in Flutter?',
      'options': [
        'AnimatedWidget',
        'AnimationController',
        'PlayAnimation',
        'RunAnimation'
      ],
      'answer': 2
    },
    {
      'question': 'In Flutter, how can you create a dropdown menu?',
      'options': ['DropdownMenu', 'PopupMenu', 'ExpandableMenu', 'OpenMenu'],
      'answer': 2
    },
    {
      'question': 'How can you open a new page in Flutter?',
      'options': [
        'openPage()',
        'Navigator.push()',
        'showPage()',
        'newScreen()'
      ],
      'answer': 2
    }
  ];
  print('welcome to questions game\n');
  startGame();
  playGame(questions);
}

void startGame() {
  print('Please enter "Start"...');
  String start = stdin.readLineSync()!;
  if (start == 'Start' || start == 'start') {
    getName();
  } else {
    startGame();
  }
}

void getName() {
  printWarning('Please enter your name...');
  String name = stdin.readLineSync()!;
  if (name.isEmpty) {
    getName();
  } else {
    printWarning('Hello, $name! Let\'s start the game!');
    print('Give the correct answer to each question to increase your score.');
  }
}

int getAnswer() {
  printWarning('Enter your answer (enter the number of the desired option): ');
  String answer = stdin.readLineSync()!;
  if (answer == '1' || answer == '2' || answer == '3' || answer == '4') {
    return int.parse(answer);
  } else {
    return int.parse('0');
  }
}

bool validateAnswer(int userAnswer, int correctAnswer) {
  return userAnswer == correctAnswer;
}

void printFeedback(bool isCorrect) {
  if (isCorrect) {
    printSuccess('Your answer is correct!');
  } else {
    printError('Your answer is incorrect!');
  }
}

void playGame(questions) {
  int score = 0;
  int sumQuestions = questions.length;
  questions.shuffle();
  for (int i = 0; i < sumQuestions; i++) {
    printQuestion('\nQuestion ${i + 1}:');
    printQuestion(questions[i]['question']);
    print('Options:');
    for (int j = 0; j < questions[i]['options'].length; j++) {
      print('${j + 1}. ${questions[i]['options'][j]}');
    }

    int userAnswer = getAnswer();
    bool isCorrect = validateAnswer(userAnswer, questions[i]['answer']);
    printFeedback(isCorrect);

    if (isCorrect) {
      score++;
    }

    sleep(Duration(
        seconds: 1)); // Pause for 1 second before displaying the next question
  }

  printWarning('\nGame Over!');
  printWarning('Your Score: $score/$sumQuestions');

  switch (score) {
    case < 5:
      printError('<-------More effort is needed!!------->');
      break;

    case >= 5 && < 8:
      printWarning('<-------Good. Keep practicing!------->');
      break;

    case >= 8:
      printSuccess('Great. Keep it up!------->');
      break;
  }
  printQuestion('\nEND Game.Thanks for playing!!!    (❁´◡`❁)');
}

void printWarning(String text) {
  print('\x1B[33m$text\x1B[0m');
}

void printError(String text) {
  print('\x1B[31m$text\x1B[0m');
}

void printSuccess(String text) {
  print('\x1B[32m$text\x1B[0m');
}

void printQuestion(String text) {
  print('\x1B[35m$text\x1B[0m');
}
