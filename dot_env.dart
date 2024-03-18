import 'dart:io';

void main() {
  Map<String, String> envs = {};
  var regEx = RegExp(r'[=' '#]');
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
