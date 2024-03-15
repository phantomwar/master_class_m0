import 'dart:io';

void main() {
  int? numberNull = null;

  List<double?> numberList = [];

  for (int i = 0; i <= 3; i++) {
    print('Insira o ${i + 1}° valor:');
    String? imput = stdin.readLineSync();
    if (imput != null && imput != '') {
      numberList.add(double.parse(imput));
    } else if (imput == null || imput == '' && numberNull == null) {
      numberNull = i;
      numberList.add(null);
    } else if (numberNull != null) {
      print('Um valor nulo ja foi inserino na posiçao ${i + 1}');
      break;
    }
  }
  print(numberList.toString());
  if (numberList.length == 4) {
    print(regraDe3(numberList[0], numberList[1], numberList[2], numberList[3])
        .toString());
  }
}

double regraDe3(double? n11, double? n12, double? n21, double? n22) {
  if (n11 == null || n22 == null) {
    return (n12! * n21!) / ((n11 ?? 1) * (n22 ?? 1));
  } else if (n12 == null || n21 == null) {
    return (n11 * n22) / ((n12 ?? 1) * (n21 ?? 1));
  }
  return 0;
}
