import 'package:desafio_imc/functions/functions.dart';
import 'package:desafio_imc/pessoa.dart';

void executar() {
  print("Calculadora IMC...");
  Pessoa usuario = Pessoa(
      lerConsole("Informe seu Nome:"),
      lerConsoleDouble("Informe seu Altura: "),
      lerConsoleDouble("Informe sua Peso: "));
  print("Proceguindo para o Calculo");
  print(tabelaIMC());
}
