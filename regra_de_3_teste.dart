import 'dart:io';

void main() {
  print('Digite a quantidade de combustivel gasto em litros:');
  var n1 = double.parse(stdin.readLineSync()!);
  print('Digite a distancia percorrida em km para $n1 litros:');
  var n2 = double.parse(stdin.readLineSync()!);
  print('Digite a quantidade de combustivel que prentende abastecer:');
  var n3 = double.parse(stdin.readLineSync()!);
  double resultadoX = regraDe3(n1, n2, n3);
  print('Com $n3 litros de combustivel você ira percorrer $resultadoX km ');
}

double regraDe3(double n1, double n2, double n3) {
  return (n2 * n3) / n1;
}
