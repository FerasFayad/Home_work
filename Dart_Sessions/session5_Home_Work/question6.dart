/*
Q6. Number Guessing (3 Tries)
- Generate a random number between 1 and 20.
- Let the user guess up to 3 times.
 If they fail, reveal the correct number. */

import 'dart:io';
import 'dart:math';

void main() {
// #region 1) Generate the secret number
  int secretNumber = generateRandomNumber();
// #endregion

// #region 1) Start the game
  playGame(secretNumber);
// #endregion
}

//======================= Requirement One ===============================//
// Generate a random number between 1 and 20
int generateRandomNumber() {
  Random random = Random();
  return random.nextInt(20) + 1;
}

//======================= Requirement Two ===============================//
// Run the game logic (3 tries)
void playGame(int secretNumber) {
  const int maxTries = 3;
  bool guessedCorrectly = false;

  print('Guess the number between 1 and 20');
  print('You have $maxTries tries.\n');

  for (int attempt = 1; attempt <= maxTries; attempt++) {
    int guess = getUserGuess(attempt);

    if (checkGuess(guess, secretNumber)) {
      print('🎉 Correct! You guessed the number.');
      guessedCorrectly = true;
      break;
    } else {
      print('❌ Wrong guess.\n');
    }
  }

  if (!guessedCorrectly) {
    revealAnswer(secretNumber);
  }
}

//======================= Requirement Three ===============================//
// Get the user's guess
int getUserGuess(int attempt) {
  stdout.write('Attempt $attempt: Enter your guess: ');
  return int.parse(stdin.readLineSync()!);
}

//======================= Requirement Four ===============================//
// Check if the guess is correct
bool checkGuess(int guess, int secretNumber) {
  return guess == secretNumber;
}

//======================= Requirement Five ===============================//
// Reveal the correct number if the user fails
void revealAnswer(int secretNumber) {
  print('\nYou failed to guess the number.');
  print('The correct number was: $secretNumber');
}
