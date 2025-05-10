import 'dart:io';

///657. Robot Return to Origin
void main() {
  String moves = stdin.readLineSync()!;
  print(_myAnswer(moves));
}

bool _myAnswer(String moves) {
  int horizonlat = 0;
  int vertical = 0;

  for (var i = 0; i < moves.length; i++) {
    if (moves[i] == 'U') vertical++;
    if (moves[i] == 'D') vertical--;
    if (moves[i] == 'L') horizonlat++;
    if (moves[i] == 'R') horizonlat--;
  }
  return horizonlat == 0 && vertical == 0;
}
