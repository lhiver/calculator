import 'dart:io';

void main() {
  opt();
}

double input(String numero) {
  print(numero);
  String toInput = stdin.readLineSync() ?? '';
  return double.tryParse(toInput) ?? 0.0;
}

double firstNumber() {
  double number1 = 0.0;
  do {
    number1 = input('Digite um número: ');
  } while (number1 == 0.0);
  print(number1);
  return number1;
}

double secondNumber() {
  double number2 = 0.0;
  do {
    number2 = input('Digite um número2: ');
  } while (number2 == 0.0);
  print(number2);
  return number2;
}

void opt() {
  print('Escolha uma operação: ');
  print('1 - SOMA');
  print('2 - MULTIPLICAÇÃO');
  print('3 - DIVISÃO');
  print('4 - SUBTRAÇÃO');

  double opcao = input('Digite um número entre 1 e 4');
  int opcaoint = opcao.toInt();

  switch (opcaoint) {
    case 1:
      sum();
      break;
    case 2:
      mult();
      break;
    case 3:
      div();
      break;
    case 4:
      sub();
      break;
    default:
      print('numero inválido!!');
  }
}

double sum() {
  double resultado = firstNumber() + secondNumber();
  print(resultado);
  return resultado;
}

double mult() {
  double resultado = firstNumber() * secondNumber();
  print(resultado);
  return resultado;
}

double div() {
  double resultado = firstNumber() / secondNumber();
  print(resultado);
  return resultado;
}

double sub() {
  double resultado = firstNumber() - secondNumber();
  print(resultado);
  return resultado;
}
