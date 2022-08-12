import 'dart:io';

int filter(int numero) {
  if (numero < 3) {
    return 0;
  }
  var somaNumero = 0;
  for (var i = 0; i < numero; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      somaNumero += i;
    } /*Fiz um for, para conferir se cada numero dentro valor dado pelo usuario é divisivel por 3 ou 5, caso ele fosse ele seria adicionado a uma variavel
    que somaria ela mesma mais o valor do numero divisivel.
  
  */
  }

  return somaNumero;
}

main() {
  dynamic resposta = '';
  print("Qual o número inteiro ?");
  resposta = stdin.readLineSync();
  int number = int.parse(resposta);
  var mostrar = filter(number);
  print(
      "A soma de todos os numeros divisiveis por 3 e 5 dentro de ${number} é ${mostrar}");
}
