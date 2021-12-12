import 'dart:io';

main() {
/*imput de altura
imput de peso
realizar calculo do imc
output de imc*/
  calculoImc();
}

calculoImc() {
  print("Informe seu Peso: ");
  String? textPeso = stdin.readLineSync();
  int peso = int.parse(textPeso!);
  print("Informe sua altura: ");
  String? textAlt = stdin.readLineSync();
  double altura = double.parse(textAlt!);

  double calc = calculo(peso, altura);
  imprimirResultado(calc);
}

double calculo(int peso, double altura) {
  return peso / (altura * altura);
}

imprimirResultado(double calc) {
  if (calc < 18.5) {
    print("você está Magro, seu Imc é: ");
    print(calc);
  } else if (calc > 18.5 && calc < 24.9) {
    print("Seu Imc está Normal: ");
    print(calc);
  } else if (calc > 24.9 && calc < 29.9) {
    print("você está com sobrepeso, seu Imc é: ");
    print(calc);
  } else if (calc > 29.9 && calc < 39.9) {
    print("Você está com obesidade de grau 1, seu IMC é: ");
    print(calc);
  } else if (calc > 39.9) {
    print("você está com obesidade grave, seu IMC é: ");
    print(calc);
  }
}
