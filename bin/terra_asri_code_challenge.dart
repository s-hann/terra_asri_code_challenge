import 'dart:io';

import 'functions/functions.dart';

void main() {
  int inputCase = 0;
  while (inputCase != 5) {
    // clear cli
    for (int i = 0; i < stdout.terminalLines; i++) {
      stdout.writeln();
    }
    stdout.writeln('Code Challenge');
    stdout.writeln("1. Case 1: Unearthing the Philosopher's Stone");
    stdout.writeln('2. Case 3: The Never ending Palindrome Quest');
    stdout.writeln('3. Exit');
    stdout.write('Input number [1 - 4] (refer to the number on the left): ');
    inputCase = int.parse(stdin.readLineSync() ?? '0');
    switch (inputCase) {
      case 1:
        stdout.write('Input grid size: ');
        final input = stdin.readLineSync();
        stdout.writeln(calculateDiagonalSum(int.parse(input ?? '0')));
        stdout.write("\n\nPress 'enter' to continue.");
        stdin.readLineSync();
        break;
      case 2:
        stdout.write('Input string: ');
        final input = stdin.readLineSync();
        stdout.writeln(isPalindrome(input));
        stdout.write("\n\nPress 'enter' to continue.");
        stdin.readLineSync();
        break;
      case 3:
        stdout.writeln('Code finished.');
        return;
    }
  }
}
