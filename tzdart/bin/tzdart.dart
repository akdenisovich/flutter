import 'dart:io';
import 'dart:math';
void main() {
  var rng = Random();
  var massiv = List.generate(10, (int i) => rng.nextInt(500));
  var massiv2 = [];
  for (int i in massiv){
    if (i%2==0){
      massiv2.add(i);
    }
  }
  
   print(massiv);
   print(massiv2);

}