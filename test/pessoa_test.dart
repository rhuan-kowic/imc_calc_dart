import 'package:test/test.dart';
import 'package:imc_calc_dart/model/pessoa.dart';

void main() {
  group('Pessoa', () {
    test('deve criar uma instância válida com dados corretos', () {
      final pessoa = Pessoa('João', 70.0, 1.75);
      expect(pessoa.getNome(), equals('João'));
      expect(pessoa.getPeso(), equals(70.0));
      expect(pessoa.getAltura(), equals(1.75));
    });

    test('deve lançar erro se o nome for vazio', () {
      expect(
        () => Pessoa('', 70.0, 1.75),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('Nome não pode ser vazio'),
          ),
        ),
      );
    });

    test('deve lançar erro se o peso for menor ou igual a zero', () {
      expect(
        () => Pessoa('João', 0.0, 1.75),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('Peso não pode ser 0 ou menor que zero'),
          ),
        ),
      );
    });

    test('deve lançar erro se a altura for menor ou igual a zero', () {
      expect(
        () => Pessoa('João', 70.0, 0.0),
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            contains('Altura não pode ser 0 ou menor que zero'),
          ),
        ),
      );
    });

    test('deve calcular o IMC corretamente', () {
      final pessoa = Pessoa('João', 70.0, 1.75);
      expect(pessoa.calcularIMC(), closeTo(22.86, 0.01));
    });

    test('deve classificar o IMC corretamente', () {
      final pessoa = Pessoa('João', 70.0, 1.75);
      expect(pessoa.classificarIMC(), equals('Peso normal'));
    });
  });
}
