import 'dart:ffi';
import 'dart:io';

dynamic filter(int numero) {
  if (numero < 3) {
    return print("O número é menor do que 3 por isso não pode ser calculado");
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
  print("Informe um número inteiro e positivo ?");
  resposta = stdin.readLineSync();
  dynamic number = num.parse(resposta);
  if (number < 0 || number.runtimeType != int) {
    while (number < 0 || number.runtimeType != int) {
      print("O numero ${number} digitado não é inteiro ou positivo");
      resposta = stdin.readLineSync();
      number = num.parse(resposta);
    }
  } // fiz uma estrutura de repetição, para impedir de que o usuario digite numeros não inteiros ou numeros negativos
  var mostrar = filter(number);
  if (mostrar != null) {
    print(
        "A soma de todos os numeros divisiveis por 3 e 5 dentro de ${number} é ${mostrar}");
  }
}
