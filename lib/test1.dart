import 'dart:io';
import 'dart:math';
var count = 0;
void main(){
  var r = Random();
  var answer = r.nextInt(100) + 1;
  var isCorrect = false;
  print('╔════════════════════════════════════════════════');
  print('║                GUESS THE NUMBER');
  print('╟────────────────────────────────────────────────');
  do{
    stdout.write('║ Guess the number between 1 and 100 : ');
    var input = stdin.readLineSync();
    if(input==null){
      print('Error, input is NULL');
      return;
    }
    var guess = int.tryParse(input);
    if(guess==null){
      //print('Input error, please enter numbers only');
      continue;
    }
    isCorrect = doGuess(guess, answer);
  } while (!isCorrect);
}
bool doGuess(int guess, int answer) {
  if (guess == answer) {
    count++;
    print('║ ➜ $guess is CORRECT ❤, total guesses : $count');
    print('╟────────────────────────────────────────────────');
    print('║                     THE END');
    print('╚════════════════════════════════════════════════');
    return true;
  } else if (guess > answer) {
    count++;
    print('║ ➜ $guess is TOO HIGH! ▲');
    print('╟────────────────────────────────────────────────');
    return false;
  } else {
    count++;
    print('║ ➜ $guess is TOO LOW! ▼');
    print('╟────────────────────────────────────────────────');
    return false;
  }
}