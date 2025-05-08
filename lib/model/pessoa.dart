class Pessoa {
  String _nome = "";
  double _peso = 0.0;
  double _altura = 0.0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  Pessoa(String nome, double peso, double altura) {
    if (nome.isEmpty || nome == "") {
      throw ArgumentError("Nome não pode ser vazio.");
    }
    if (peso <= 0) {
      throw ArgumentError("Peso não pode ser 0 ou menor que zero.");
    }
    if (altura <= 0) {
      throw ArgumentError("Altura não pode ser 0 ou menor que zero.");
    }
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  double calcularIMC() {
    return (_altura * _altura) / _peso;
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if (imc < 16) {
      return "Magreza grave";
    } else if (imc == 16 && imc < 17) {
      return "Magreza moderada";
    } else if (imc == 17 && imc < 18.5) {
      return "Magreza leve";
    } else if (imc == 18.5 && imc < 25) {
      return "Saudável";
    } else if (imc == 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc == 30 && imc < 35) {
      return "Obesidade Grau I";
    } else if (imc == 35 && imc < 40) {
      return "Obesidade Grau II (severa)";
    } else {
      return "Obesidade Grau III (morbida)";
    }
  }

  @override
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}
