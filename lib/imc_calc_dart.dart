import 'dart:convert';
import 'dart:io';
import 'package:imc_calc_dart/model/pessoa.dart';

void calculate() {
  print("Informe seu nome: ");
  var line = stdin.readLineSync(encoding: utf8);
  String nome = line?.trim() ?? "";

  print("Informe seu peso: ");
  line = stdin.readLineSync(encoding: utf8);
  double peso = double.tryParse(line?.trim() ?? "") ?? 0.0;

  print("Informe sua altura: ");
  line = stdin.readLineSync(encoding: utf8);
  double altura = double.tryParse(line?.trim() ?? "") ?? 0.0;

  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(pessoa.calcularIMC());
  print(pessoa.classificarIMC());
}
