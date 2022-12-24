import 'dart:io';
import 'dart:math';

void main() {
  var r = Random();
  var answer = r.nextInt(100) + 1;

  var isCorrect = false;

  do {
    stdout.write('Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();

    if (input == null) {
      print('Error, input is NULL');
      return;
    }

    var guess = int.tryParse(input);

    if (guess == null) {
      print('Input error, please enter numbers only');
      continue;
    }
     isCorrect = doGuess(guess, answer);

  } while (!isCorrect);
   //todo: call doGuess()
}
 bool doGuess(int guess, int answer){
   if (guess == answer) {
     print('CORRECT! The answer is $answer');
     return  true;
   } else if (guess > answer) {
     print('TOO HIGH');
     return  false;
   } else {
     print('TOO LOW');
     return  false;
   }
 }





