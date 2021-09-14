import 'dart:io';
import 'dart:math';

void main() {
  var rng = Random();
  var massiv = List.generate(10, (int i) => rng.nextInt(500));
  var massiv2 = [];
  for (int i in massiv) {
    if (i % 2 == 0) {
      massiv2.add(i);
    }
  }
  print('TASK NUMBER ONE');
  print('Random generated array - $massiv');
  print('Even elements of random generated array - $massiv2'); //task 1 finished
  print('Task number one finished');

  print('');
  print('TASK NUMBER TWO ');
  while (true) {
    print('Vvedite chislo ');
    dynamic n = stdin.readLineSync()!;
    if (int.tryParse(n) == null) {
      print('Vi vveli ne chislo');
    } else {
      print('Vi vveli $n');
    }
  }

  //task 2 finished
}
