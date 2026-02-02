/*
Q6. Number Guessing (3 Tries)
- Generate a random number between 1 and 20.
- Let the user guess up to 3 times.
 If they fail, reveal the correct number. */
 import 'dart:io';
import 'dart:math';

void main() {
  int secretNumber = generateRandomNumber();
  bool guessedCorrectly = false;

  print('Guess the number between 1 and 20');
  print('You have 3 tries.\n');

  for (int attempt = 1; attempt <= 3; attempt++) {
    stdout.write('Attempt $attempt: Enter your guess: ');
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == secretNumber) {
      print('🎉 Correct! You guessed the number.');
      guessedCorrectly = true;
      break;
    } else {
      print('❌ Wrong guess.');
    }
  }

  if (!guessedCorrectly) {
    print('\nYou failed to guess the number.');
    print('The correct number was: $secretNumber');
  }
}

//======================= Helper Function ===============================//
int generateRandomNumber() {
  Random random = Random();
  return random.nextInt(20) + 1; // 1 → 20
}
