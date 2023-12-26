import 'dart:io';
import 'dart:math';

// Black:   \x1B[30m
// Red:     \x1B[31m
// Green:   \x1B[32m
// Yellow:  \x1B[33m
// Blue:    \x1B[34m
// Magenta: \x1B[35m
// Cyan:    \x1B[36m
// White:   \x1B[37m
// Reset:   \x1B[0m

String resetColor = '\x1B[0m';
String redColor = '\x1B[31m';
String blueColor = '\x1B[34m';
String greenColor = '\x1B[32m';
String whiteColor = '\x1B[37m';
String yellowColor = '\x1B[33m';
String blackColor = '\x1B[30m';
String magentaColor = '\x1B[35m';
String cyanColor = '\x1B[36m';

class Quiz {
  List<Map<String, dynamic>> generalInfoQuestions = [
    {
      'statement': 'What is the capital of France?',
      'options': [
        '1. Berlin',
        '2. Madrid',
        '3. Rome',
        '4. Paris',
      ],
      'correctAnswer': '4. Paris',
    },
    {
      'statement': 'Which planet is known as the Red Planet?',
      'options': [
        '1. Venus',
        '2. Mars',
        '3. Jupiter',
        '4. Saturn',
      ],
      'correctAnswer': '2. Mars',
    },
    {
      'statement': 'In which year did World War II end?',
      'options': [
        '1. 1943',
        '2. 1947',
        '3. 1945',
        '4. 1950',
      ],
      'correctAnswer': '3. 1945',
    },
    {
      'statement': 'Who wrote "Romeo and Juliet"?',
      'options': [
        '1. Charles Dickens',
        '2. William Shakespeare',
        '3. Jane Austen',
        '4. Mark Twain',
      ],
      'correctAnswer': '2. William Shakespeare',
    },
    {
      'statement': 'What is the largest mammal in the world?',
      'options': [
        '1. Blue Whale',
        '2. Elephant',
        '3. Giraffe',
        '4. Hippopotamus',
      ],
      'correctAnswer': '1. Blue Whale',
    },
    {
      'statement': 'Which country is known as the Land of the Rising Sun?',
      'options': [
        '1. China',
        '2. South Korea',
        '3. Vietnam',
        '4. Japan',
      ],
      'correctAnswer': '4. Japan',
    },
    {
      'statement': 'What is the powerhouse of the cell?',
      'options': [
        '1. Nucleus',
        '2. Mitochondria',
        '3. Endoplasmic Reticulum',
        '4. Golgi Apparatus',
      ],
      'correctAnswer': '2. Mitochondria',
    },
    {
      'statement': 'Who painted the Mona Lisa?',
      'options': [
        '1. Vincent van Gogh',
        '2. Pablo Picasso',
        '3. Leonardo da Vinci',
        '4. Claude Monet',
      ],
      'correctAnswer': '3. Leonardo da Vinci',
    },
    {
      'statement': 'What is the capital of Australia?',
      'options': [
        '1. Sydney',
        '2. Melbourne',
        '3. Canberra',
        '4. Brisbane',
      ],
      'correctAnswer': '3. Canberra',
    },
    {
      'statement': 'Which programming language is this quiz written in?',
      'options': [
        '1. Java',
        '2. Python',
        '3. Dart',
        '4. C++',
      ],
      'correctAnswer': '3. Dart',
    },
  ];

  List<Map<String, dynamic>> technologyQuestions = [
    {
      'statement': 'What does CPU stand for?',
      'options': [
        '1. Central Processing Unit',
        '2. Computer Processing Unit',
        '3. Central Processor Unit',
        '4. Central Process Unit',
      ],
      'correctAnswer': '1. Central Processing Unit',
    },
    {
      'statement':
          'Which programming language is widely used for building Android apps?',
      'options': [
        '1. Java',
        '2. Swift',
        '3. Kotlin',
        '4. C#',
      ],
      'correctAnswer': '3. Kotlin',
    },
    {
      'statement': 'What is the main purpose of HTML?',
      'options': [
        '1. Styling web pages',
        '2. Defining web page structure',
        '3. Programming',
        '4. Database management',
      ],
      'correctAnswer': '2. Defining web page structure',
    },
    {
      'statement': 'What is the full form of API?',
      'options': [
        '1. Application Programming Interface',
        '2. Advanced Programming Interface',
        '3. Application Process Interface',
        '4. Automated Processing Interface',
      ],
      'correctAnswer': '1. Application Programming Interface',
    },
    {
      'statement': 'In computer science, what does GUI stand for?',
      'options': [
        '1. General User Interface',
        '2. Graphic User Interface',
        '3. General Unit Interface',
        '4. Graphic Unit Interface',
      ],
      'correctAnswer': '2. Graphic User Interface',
    },
    {
      'statement': 'What is the purpose of a firewall?',
      'options': [
        '1. Virus protection',
        '2. Data encryption',
        '3. Network security',
        '4. File storage',
      ],
      'correctAnswer': '3. Network security',
    },
    {
      'statement':
          'Which programming language is often used for data analysis and machine learning?',
      'options': [
        '1. Java',
        '2. Python',
        '3. Ruby',
        '4. C++',
      ],
      'correctAnswer': '2. Python',
    },
    {
      'statement': 'What is cloud computing?',
      'options': [
        '1. Computing with physical servers',
        '2. Computing over the internet',
        '3. Quantum computing',
        '4. Mainframe computing',
      ],
      'correctAnswer': '2. Computing over the internet',
    },
    {
      'statement': 'What is the role of a DNS server?',
      'options': [
        '1. Storing data',
        '2. Managing network traffic',
        '3. Resolving domain names to IP addresses',
        '4. Providing email services',
      ],
      'correctAnswer': '3. Resolving domain names to IP addresses',
    },
    {
      'statement':
          'Which version control system is widely used in software development?',
      'options': [
        '1. Git',
        '2. SVN',
        '3. Mercurial',
        '4. CVS',
      ],
      'correctAnswer': '1. Git',
    },
  ];

  int score = 0;

  void startQuiz() {
    print('\n${magentaColor}Welcome to the Dart Quiz Game! ${resetColor}\n');
    print('Please choose a category to be quizzed on:');
    print('1. General Information\n2. Technology\n');

    var categoryChoice = getUserAnswer();

    if (categoryChoice == '1') {
      askQuestions(generalInfoQuestions);
    } else if (categoryChoice == '2') {
      askQuestions(technologyQuestions);
    } else {
      print(
          '${redColor}Invalid choice. Please restart the quiz and select a valid category.${resetColor}');
    }
  }

  void askQuestions(List<Map<String, dynamic>> questions) {
    print(
        '\nAnswer each question with the correct ${cyanColor}option number => [1 to 4] ${resetColor}. Let\'s begin!\n');

    List<Map<String, dynamic>> remainingQuestions = List.from(questions);

    for (var i = 0; i < questions.length; i++) {
      var currentQuestion = getRandomQuestion(remainingQuestions);
      displayQuestion(currentQuestion, i + 1);
      var userAnswer = getUserAnswer();
      validateAnswer(currentQuestion, userAnswer);
      remainingQuestions.remove(currentQuestion);
    }

    endQuiz(questions.length);
  }

  Map<String, dynamic> getRandomQuestion(
      List<Map<String, dynamic>> questionList) {
    var random = Random();
    return questionList[random.nextInt(questionList.length)];
  }

  void displayQuestion(Map<String, dynamic> question, int questionNumber) {
    print(
        '${magentaColor}Question $questionNumber: ${yellowColor} ${question['statement']} ${resetColor}');
    for (var i = 0; i < question['options'].length; i++) {
      print('${question['options'][i]}');
    }
  }

  String getUserAnswer() {
    stdout.write('Your answer: ');
    return stdin.readLineSync()!;
  }

  void validateAnswer(Map<String, dynamic> question, String userAnswer) {
    var correctAnswer = question['correctAnswer'];

    if (userAnswer != "" && correctAnswer.startsWith(userAnswer)) {
      print('${greenColor}Correct! You earned a point.${resetColor}\n');
      score++;
    } else {
      print(
          '${redColor}Wrong! The correct answer is:${resetColor} ${blueColor} ${question['correctAnswer']}${resetColor}\n');
    }
  }

  void endQuiz(int totalQuestions) {
    print('Quiz completed!');
    print('Your final score is: $score/$totalQuestions');

    if (score == totalQuestions) {
      print('${cyanColor}Congrats! You\'re a Quiz Master! ${resetColor}');
    } else if (score >= totalQuestions ~/ 2) {
      print('${blueColor}Good job! Keep practicing! ${resetColor}');
    } else {
      print(
          '${yellowColor}Better luck next time. Keep practicing! ${resetColor}');
    }
  }
}

void main() {
  var quiz = Quiz();
  quiz.startQuiz();
}
