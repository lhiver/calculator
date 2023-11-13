import 'dart:io';

void main() {
  double number1 = input('Digite um número: ');
  print(number1);
}

double input(String numero) {
  print(numero);
  String toInput = stdin.readLineSync() ?? '';
  return double.tryParse(toInput) ?? 0.0;
}
