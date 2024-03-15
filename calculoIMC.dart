import 'dart:io';

void main() {
  print('Qual seu peso?');
  var peso = int.parse(stdin.readLineSync()!);
  print('Qual sua altura?');
  var altura = double.parse(stdin.readLineSync()!);
  calculoIMC(peso, altura);
}

void calculoIMC(int peso, double altura) {
  double imc = peso / (altura * altura); //imc
  if (imc < 18.5) {
    print("Seu IMC é $imc ou seja abaixo do peso, vai comer umas porcarias xD");
  } else if (imc >= 18.5 && imc <= 24.9) {
    print('Parabens, seu IMC e $imc, você esta no peso ideal');
  } else if (imc >= 25 && imc <= 29.9) {
    print(
        'Seu IMC é $imc, vc esta acima do peso, pensa 2 vezes, antes de comer porcarias');
  } else if (imc >= 30 && imc <= 34.9) {
    print(
        'Seu IMC é $imc, vc esta acima do peso, pensa 3 vezes, antes de comer porcarias');
  } else if (imc >= 35 && imc <= 39.9) {
    print(
        'Seu IMC é $imc, vc esta acima do peso, levanta a bunda da cadeira e vai fazer um exercicio');
  } else {
    print('Seu IMC é $imc, vc esta acima do peso, parece eu');
  }
}
