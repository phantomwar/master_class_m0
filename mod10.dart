void main() {
  String? cartao = '4916 6418 5936 9080';
  validarCartao(cartao);
}

void validarCartao(String cartao) {
  final regEx = RegExp(r'[^\d]');
  int soma = 0;
  String cartaoVerificado = cartao.replaceAll(regEx, '');
  if (cartaoVerificado.length != 16) {
    print('Cartão invalido');
    return;
  }
  for (int i = 0; i < cartaoVerificado.length - 1; i++) {
    if (i % 2 == 0 || i == 0) {
      String preSoma = '${int.parse(cartaoVerificado[i]) * 2}';
      if (preSoma.length == 2) {
        soma += int.parse(preSoma[0]) + int.parse(preSoma[1]);
      } else {
        soma += int.parse(preSoma);
      }
    } else {
      soma += int.parse(cartaoVerificado[i] * 1);
    }
  }
  //testei varios numeros validos fora esse do enunciado,
  //sempre que o digito verificador era diferente de 0 dava certo
  //deposi de pesquisar, sempre que o resultado for igual a 10 é 0
  int resultado = 10 - soma.remainder(10);
  if (resultado == 10) {
    resultado = 0;
  }
  if (int.parse(cartaoVerificado[15]) == (resultado)) {
    print('Cartão valido');
  } else {
    print('Cartão invalido');
  }
}
