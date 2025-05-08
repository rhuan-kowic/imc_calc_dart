import 'package:imc_calc_dart/imc_calc_dart.dart' as imc_calc_dart;

void main(List<String> arguments) {
  try {
    imc_calc_dart.calculate();
  } catch (e) {
    print("Erro: $e");
  }
}
