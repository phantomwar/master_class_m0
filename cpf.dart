import 'dart:io';

void main() {
  String? cpf = stdin.readLineSync()!;
  validarCpf(cpf);
}

validarCpf(String cpf) {
  final regEx = RegExp(r'[^\d]');
  String cpfValido = cpf.replaceAll(regEx, '');
  if (cpfValido.length != 11) {
    print('Cpf invalido');
    return;
  }
  if (validarDigitoCpf(cpfValido, 1) && validarDigitoCpf(cpfValido, 2)) {
    print('Cpf valido');
  }
}

bool validarDigitoCpf(String cpf, int digitoVerificador) {
  int soma = 0;
  int limiteArray = 7 + digitoVerificador;
  for (int i = 0; i <= limiteArray; i++) {
    soma += int.parse(cpf[limiteArray - i]) * (2 + i);
  }
  double resto = soma % 11;
  if (resto < 2) {
    if (int.parse(cpf[8 + digitoVerificador]) != 0) {
      print('Cpf invalido');
      return false;
    }
  } else {
    if (int.parse(cpf[8 + digitoVerificador]) != 11 - resto) {
      print('Cpf invalido');
      return false;
    }
  }
  return true;
}
