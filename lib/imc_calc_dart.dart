import 'package:imc_calc_dart/model/pessoa.dart';
import 'package:imc_calc_dart/utils.dart';

void calculate() {
  String nome = lerConsole("Informe seu nome: ");
  double peso = lerConsoleDouble("Informe seu peso: ");
  double altura = lerConsoleDouble("Informe sua altura: ");

  Pessoa pessoa = Pessoa(nome, peso, altura);

  print('\n--- Resultado do Cálculo do IMC ---');
  print('Nome: ${pessoa.getNome()}');
  print('Peso: ${pessoa.getPeso().toStringAsFixed(2)} kg');
  print('Altura: ${pessoa.getAltura().toStringAsFixed(2)} m');
  print('IMC: ${pessoa.calcularIMC()}');
  print('Classificação: ${pessoa.classificarIMC()}');
  print('-----------------------------------\n');
}
