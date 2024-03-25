import 'dart:io';

void main() {
  String card = '4916 6418 5936 9080';
  print('Insira o cartão de credito:');
  String? inputCard = stdin.readLineSync();
  if (inputCard == null || inputCard == '') {
    print(
        'Cartão digitado vazio, para proposito de teste utilizamos o cartão $card');
    inputCard = card;
  }
  creditCardValidator(inputCard);
}

void creditCardValidator(String card) {
  final regEx = RegExp(r'[^\d]');
  String cardForVerification = card.replaceAll(regEx, '');
  if (cardForVerification.length != 16) {
    print('Cartão invalido');
    return;
  }
  int verifyingDigit = int.parse(cardForVerification[15]);
  int total = 0;

  for (int i = 0; i < cardForVerification.length - 1; i++) {
    if (i % 2 == 0 || i == 0) {
      String auxiliarySum = '${int.parse(cardForVerification[i]) * 2}';
      if (auxiliarySum.length == 2) {
        total += int.parse(auxiliarySum[0]) + int.parse(auxiliarySum[1]);
      } else {
        total += int.parse(auxiliarySum);
      }
    } else {
      total += int.parse(cardForVerification[i] * 1);
    }
  }

  // sempre que o resultado for igual a 10 é 0
  int result = 10 - total.remainder(10);
  if (result == 10) {
    result = 0;
  }
  if (verifyingDigit == (result)) {
    print('Cartão $cardForVerification é valido');
  } else {
    print('Cartão $cardForVerification é invalido');
  }
}
