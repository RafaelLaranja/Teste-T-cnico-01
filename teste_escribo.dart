import 'dart:io';

int filter(int numero) {
  if (numero < 3) {
    return 0;
  }
  var somaNumero = 0;
  for (var i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somaNumero = somaNumero + i;
    }
  }

  return somaNumero;
}

main() {
  dynamic resposta =
      ''; //Criei uma variavel para armazenar oque o usuario digitar
  print("Qual o número inteiro ?");
  resposta = stdin.readLineSync();
  int number = int.parse(resposta);
  var mostrar = filter(number);
  print(
      "A soma de todos os numeros divisiveis por 3 e 5 dentro de ${number} é ${mostrar}");
}
