import 'dart:io';

void main() {
  Map<String, String> envs = {};
  var regEx = RegExp(r'[=' '#]');
  // lê o arquivo .env ,
  //o readAsLinesSync() retorna uma lista de linhas do arquivo
  //o forEach() percorre cada elemento da lista
  //o split() divide cada elemento da lista em uma string com base no argumento passado
  // tive que verificar se o elemento da lista estava vazio antes de usar o split()
  // considerando que o formato seja sempre (chave = valor # comentario )
  // o [0] da primeira cadeia de string sera a chave e o [1] da segunda cadeia de string o valor

  File('.env').readAsLinesSync().forEach(
    (element) {
      if (element.isNotEmpty) {
        var splitted = element.split(regEx);
        envs[splitted[0]] = splitted[1];
      }
    },
  );
  print(envs);
}
