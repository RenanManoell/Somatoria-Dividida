import 'dart:io';

ValorSomatorioeDividido() {
  //recebe o valor do usuario sendo int
  int resultado = 0;
  bool verificacao = false;

  while (verificacao = true) {
    //solicita uma entrada de valor que o usuario desejar.
    stdout.write("Digite um número inteiro positivo: ");
    String input = stdin.readLineSync() ?? "";
    //loop para verificar se o valor digitado é um numero.
    try {
      int numero = int.parse(input);
      //if para verificar se o valor é positivo.
      if (numero > 0) {
        //loop para verificar o numero informado e fazer calculo da divisão
        for (int i = 1; i < numero; i = i + 1) {
          if (i % 3 == 0) {
            //se ele aceitar dividir por 3 adiciona o valor ao resultado.
            resultado = resultado + i;
          } else {
            if (i % 5 == 0) {
              //se ele aceitar dividir por 5 adiciona o valor ao resultado.
              resultado = resultado + i;
            }
          }
        }
        //mostra o resultado ao usuario final.
        print('o resultado é: $resultado');
        return resultado;
      } else {
        //else para quando o usuario digitar valor negativo.
        print('Numero deve ser positivo (Maior que 0).');
      }
    } catch (e) {
      //tratativo se caso ele digitar qualquer coisa que não seja numero.
      print('O valor não é valido, favor informar outro.');
    }
  }
}

main() {
  //start no app.
  ValorSomatorioeDividido();
}
