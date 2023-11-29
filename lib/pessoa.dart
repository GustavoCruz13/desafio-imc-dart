class Pessoa {
  String _nome = "";
  static double _peso = 0;
  static double _altura = 0;

  Pessoa(String nome, double altura, double peso) {
    _nome = nome;
    _peso = peso;
    _altura = altura;
  }

  String getNome() => _nome;
  static double getPeso() => _peso;
  static double getAltura() => _altura;
}
