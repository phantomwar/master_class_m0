import 'dart:io';

//playground

void main() {
  calcular();
}

calcular() {
  print('Entre com o primeiro numero');
  int? n1 = int.parse(stdin.readLineSync()!);
  print('Entre com o segundo numero');
  int? n2 = int.parse(stdin.readLineSync()!);

  int soma = n1 + n2;
  print(soma);
}
