import 'dart:io';

void main() {
  var massiv = [];
  int l = 0 ;
  String x ='';
  while (x !='exit') {
    print('Vvedite chislo ');
    dynamic n = stdin.readLineSync()!;
    x = n.toString();
    if (int.tryParse(n) == null) {
      print('Vi vveli ne chislo');
      print('Dlina massiva $l');
      
    } else {
      massiv.add(int.tryParse(n));
      l= massiv.length;
      print('Dlina massiva $l');
    }
  }
 
}
