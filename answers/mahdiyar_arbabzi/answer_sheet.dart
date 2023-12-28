class AnswerSheetFields {
  static const String question = 'question';
  static const String choices = 'choices';
  static const String answer = 'answer';
}

class AnswerSheet {
  static const List<Map<String, dynamic>> data = [
    {
      AnswerSheetFields.question: 'What is the powerhouse of the cell?',
      AnswerSheetFields.choices: [
        'Chloroplast',
        'Nucleus',
        'Mitochondrion',
        'Golgi apparatus'
      ],
      AnswerSheetFields.answer: 'Mitochondrion'
    },
    {
      AnswerSheetFields.question:
          'Which ancient civilization built the Great Pyramids of Giza?',
      AnswerSheetFields.choices: ['Greek', 'Roman', 'Egyptian', 'Mesopotamian'],
      AnswerSheetFields.answer: 'Egyptian'
    },
    {
      AnswerSheetFields.question: 'Which is the world\'s largest ocean?',
      AnswerSheetFields.choices: [
        'Indian Ocean',
        'Atlantic Ocean',
        'Arctic Ocean',
        'Pacific Ocean'
      ],
      AnswerSheetFields.answer: 'Pacific Ocean'
    },
    {
      AnswerSheetFields.question: 'Who wrote the play "Romeo and Juliet"?',
      AnswerSheetFields.choices: [
        'William Shakespeare',
        'Charles Dickens',
        'Jane Austen',
        'Mark Twain'
      ],
      AnswerSheetFields.answer: 'William Shakespeare'
    },
    {
      AnswerSheetFields.question:
          'In which sport is the term "love" used to describe a score of zero?',
      AnswerSheetFields.choices: ['Tennis', 'Basketball', 'Soccer', 'Golf'],
      AnswerSheetFields.answer: 'Tennis'
    },
    {
      AnswerSheetFields.question: 'What does CPU stand for in computing?',
      AnswerSheetFields.choices: [
        'Central Processing Unit',
        'Computer Performance Utility',
        'Control Panel Unit',
        'Core Processing Utility'
      ],
      AnswerSheetFields.answer: 'Central Processing Unit'
    },
    {
      AnswerSheetFields.question: 'Who directed the movie "Inception"?',
      AnswerSheetFields.choices: [
        'Christopher Nolan',
        'Steven Spielberg',
        'Martin Scorsese',
        'Quentin Tarantino'
      ],
      AnswerSheetFields.answer: 'Christopher Nolan'
    },
    {
      AnswerSheetFields.question:
          'What is the value of pi (π) to two decimal places?',
      AnswerSheetFields.choices: ['3.12', '3.14', '3.16', '3.18'],
      AnswerSheetFields.answer: '3.14'
    },
    {
      AnswerSheetFields.question:
          'Which instrument has keys, pedals, and strings and is played by pressing the keys?',
      AnswerSheetFields.choices: ['Violin', 'Flute', 'Piano', 'Guitar'],
      AnswerSheetFields.answer: 'Piano'
    },
    {
      AnswerSheetFields.question:
          'What is the largest living bird by wingspan?',
      AnswerSheetFields.choices: [
        'Bald Eagle',
        'Albatross',
        'Condor',
        'Pelican'
      ],
      AnswerSheetFields.answer: 'Albatross'
    },
  ];
}
