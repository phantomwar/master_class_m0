import 'dart:io';
import 'dart:math';

void main() {
  String? text = stdin.readLineSync();
  if (text != null) {
    var key = keyGenerator(text.toUpperCase());
    print('Chave: ' + key);

    String encryptedText = cifraVigenereEncode(text.toUpperCase(), key);
    print('Texto criptografado: ' + encryptedText);

    String decryptedText = cifraVigenereDecode(encryptedText, key);
    print('Texto descriptografado: ' + decryptedText);
  }
}

String keyGenerator(String text) {
  var geradorRandom = Random();
  String key = '';
  //gera uma chave aleatória maior >= 32 e <256
  List.generate(text.length, (index) => geradorRandom.nextInt(223) + 33)
      .forEach((element) {
    key += String.fromCharCode(element);
  });
  return key;
}

String cifraVigenereDecode(String encryptedText, String string) {
  String newText = '';
  var regEx = RegExp('[A-Z]');
  for (int i = 0; i < encryptedText.length; i++) {
    if (encryptedText[i].contains(regEx)) {
      newText += String.fromCharCode(
          (encryptedText.codeUnitAt(i) - string.codeUnitAt(i) + 26) % 26 +
              'A'.codeUnits[0]);
    } else {
      newText += encryptedText[i];
    }
  }
  return newText;
}

String cifraVigenereEncode(String text, String key) {
  String newText = '';
  var regEx = RegExp('[A-Z]');
  for (int i = 0; i < text.length; i++) {
    if (text[i].contains(regEx)) {
      newText += String.fromCharCode(
          (text.codeUnitAt(i) + key.codeUnitAt(i)) % 26 + 'A'.codeUnits[0]);
    } else {
      newText += text[i];
    }
  }
  return newText;
}
