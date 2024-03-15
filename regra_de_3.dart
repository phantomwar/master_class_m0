void main() {
  calcularRegraDe3(1, 30, 3, null);
}

void calcularRegraDe3(double? n1, double? n2, double? n3, double? n4) {
  if (n1 == null || n2 == null || n3 == null || n4 == null) {
    if (n1 == null && n2 != null && n3 != null && n4 != null) {
      print('O valor de n1 é ${n2 * n3 / n4}');
    } else if (n1 != null && n2 == null && n3 != null && n4 != null) {
      print('O valor de n2 é ${(n1 * n4) / n3}');
    } else if (n1 != null && n2 != null && n3 == null && n4 != null) {
      print('O valor de n3 é ${(n1 * n4) / n2}');
    } else if (n1 != null && n2 != null && n3 != null && n4 == null) {
      print('O valor de n4 é ${(n2 * n3) / n1}');
    } else {
      print('mais de um nulo foi inserido');
    }
  } else {
    print('Nenhum valor foi nulo inserido');
  }
}
