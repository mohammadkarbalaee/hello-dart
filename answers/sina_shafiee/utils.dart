import 'dart:io';

void exitProgram(
    {String? message, String? textColor = 'error', int? code = 0}) {
  if (message != null) {
    customPrint(message, textColor!);
  }
  exit(code!);
}

void clearConsole() {
  if (Platform.isWindows) {
    print(Process.runSync('cls', [], runInShell: true).stdout);
  } else {
    print('\x1B[2J\x1B[0;0H');
  }
}

void printNavBar(String userName, int score) {
  int consoleWidth = stdout.terminalColumns;
  int contentSpace = consoleWidth - 20;

  int padding =
      (contentSpace - (userName.length + score.toString().length)) ~/ 2;
  String navbar =
      '${' ' * padding} Name: $userName ${'-' * 1} Score: $score ${' ' * padding}';

  print('$navbar\n');
}

void customPrint(String text, String color) {
  Map<String, String> colorCodes = {
    'error': '\x1B[31m',
    'success': '\x1B[32m',
    'primary': '\x1B[34m',
    'secondary': '\x1B[33m',
    'default': '\x1B[0m',
  };
  if (!colorCodes.containsKey(color)) {
    print('Invalid color: $color');
    return;
  }
  print('${colorCodes[color]}$text${colorCodes['default']}');
}

bool validateInput<T>(T? input,
    {String? type = 'string', bool Function(T)? condition}) {
  switch (type) {
    case 'string':
      if ((input as String).isNotEmpty) {
        return true;
      }
      break;
    case 'number':
      if (input != null && int.tryParse(input as String) != null) {
        return true;
      }
    case 'custom':
      if (input != null && condition != null && condition(input)) {
        return true;
      }
      break;
    default:
      throw new Exception('validateInput func: invalid type');
  }
  return false;
}

void showResults(int score) {
  switch (score) {
    case <= 5:
      customPrint('Keep practicing, you\'ll get there!', 'error');
      break;
    case >= 6 && <= 8:
      customPrint('Good job! Keep up the practice!', 'primary');
      break;
    default:
      customPrint('Excellent work! You\'re doing fantastic!', 'success');
      break;
  }
}
