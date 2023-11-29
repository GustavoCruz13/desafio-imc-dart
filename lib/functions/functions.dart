import 'dart:convert';
import 'dart:io';
import 'package:desafio_imc/pessoa.dart';

String lerConsole(String texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto) {
  return double.parse(lerConsole(texto));
}

double formulaIMC() {
  double imc = Pessoa.getPeso() / (Pessoa.getAltura() * Pessoa.getAltura());
  return imc; //.floorToDouble()
}

String? tabelaIMC() {
  if (formulaIMC() < 16.0) {
    return "Sua categoria é: Magreza Grave com o IMC de ${formulaIMC().toString()}";
  } else if (formulaIMC() >= 16.0 && formulaIMC() < 17.0) {
    return "Sua categoria é: Magreza Moderada com o IMC de ${formulaIMC().toString()}";
  } else if (formulaIMC() >= 17 && formulaIMC() < 18.5) {
    return "Sua categoria é: Magreza leve com o IMC de ${formulaIMC().toString()}";
  } else if (formulaIMC() >= 18.5 && formulaIMC() < 25) {
    return "Sua categoria é: Saudável com o IMC de ${formulaIMC().toString()}";
  } else if (formulaIMC() >= 25 && formulaIMC() < 30) {
    return "Sua categoria é: Sobrepeso com o IMC de ${formulaIMC().toString()}";
  } else if (formulaIMC() >= 30 && formulaIMC() < 35) {
    return "Sua categoria é: Obesidade Grau 1 com o IMC de ${formulaIMC().toString()}";
  } else if (formulaIMC() >= 35 && formulaIMC() < 40) {
    return "Sua categoria é: Obesidade Grau 2 com o IMC de ${formulaIMC().toString()}";
  } else {
    return "Obesidade Grau 3, vai morrrerr em! ass: Faustão";
  }
}
