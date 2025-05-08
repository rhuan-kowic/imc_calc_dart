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

  double getAltura() {
    return _altura;
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
    double imc = _peso / (_altura * _altura);
    return double.parse(imc.toStringAsFixed(2));
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if (imc < 17) {
      return "Muito abaixo do peso";
    } else if (imc >= 17 && imc < 18.5) {
      return "Abaixo do peso";
    } else if (imc >= 18.5 && imc < 25) {
      return "Peso normal";
    } else if (imc >= 25 && imc < 30) {
      return "Sobrepeso";
    } else if (imc >= 30 && imc < 35) {
      return "Obesidade Grau I";
    } else if (imc >= 35 && imc < 40) {
      return "Obesidade Grau II (severa)";
    } else {
      return "Obesidade Grau III (mórbida)";
    }
  }

  @override
  String toString() {
    return {"Nome": _nome, "Peso": _peso, "Altura": _altura}.toString();
  }
}
