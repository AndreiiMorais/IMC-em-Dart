import 'dart:io';

main() {
/*imput de altura
imput de peso
realizar calculo do imc
output de imc*/
  print("Informe seu Peso: ");
  var textPeso = stdin.readLineSync();
  var peso = int.parse(textPeso!);
  print("Informe sua altura: ");
  var textAlt = stdin.readLineSync();
  var altura = double.parse(textAlt!);
  var calc = peso / (altura * altura);

  print("seu IMC é: ");
  print(calc);
}
