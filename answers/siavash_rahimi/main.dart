import 'dart:io';

//this question belong to mersad
List questions = [
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

void main() {
  print("Welcom to Quizi game: \n If you are ready enter Y/y:");
  var score = 0;
  while (true) {
    String input = stdin.readLineSync()!;
    if (input == 'y' || input == 'Y') {
      for (var item in questions) {
        print(item["statement"]);
        for (var answer in item["options"]) {
          print(answer);
        }
        String answer = stdin.readLineSync()!;
        if (answer == '1' || answer == '2' || answer == '3' || answer == '4') {
          if (item["options"][(int.parse(answer) - 1)] ==
              item['correctAnswer']) {
            score += 1;
            print("good joob!");
          } else {
            print("Try harder");
          }
        } else {
          print("invalid answer you lose this question score!!");
        }
      }
      if (score > 5) {
        print("YOU WIN");
        print("your score is ${score}");
      } else {
        print("YOU LOSE");
        print("your score is ${score}");
      }
    } else {
      print('invalid command!');
      print("If you are ready enter Y/y:");
    }
  }
}
