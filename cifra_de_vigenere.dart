import 'dart:io';
import 'dart:math';

void main() {
  String? text = stdin.readLineSync();
  var geradorRandom = Random(); //nao da pra instanciar na declaração
  if (text != null) {
    var chave =
        List.generate(text.length, (index) => geradorRandom.nextInt(1000));
    print(chave.toString());
    String textoCriptografado =
        cifraVigenereEncode(text.toUpperCase(), chave.toString());
    print('Texto criptografado: ' + textoCriptografado);
    String textoDescriptografado =
        cifraVigenereDecode(textoCriptografado, chave.toString());
    print('Texto descriptografado: ' + textoDescriptografado);
  }
}

String cifraVigenereDecode(String textoCriptografado, String string) {
  String newText = '';
  var regEx = RegExp('[A-Z]');
  for (int i = 0; i < textoCriptografado.length; i++) {
    if (textoCriptografado[i].contains(regEx)) {
      newText += String.fromCharCode(
          (textoCriptografado.codeUnitAt(i) - string.codeUnitAt(i) + 26) % 26 +
              'A'.codeUnits[0]);
    } else {
      newText += textoCriptografado[i];
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
