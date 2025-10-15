void main() {
  //int resultado = 100 ~/ 7;
  //int resto = 100 % 7;
  //print(resultado); //14
  //print(resto); //2

  try {
    int resultado = 100 ~/ 2;
    print(resultado);

    //double valor = double.parse("50.2a");
    double? valor = double.tryParse(
      "50.2a",
    ); //no try, se ele nao consegue converter, ele se torna null
    print(valor);
  } on UnsupportedError {
    print("A");
  } on FormatException catch (e) {
    print("Caiu no format Exeption! ${e.message}");
  } catch (e) {
    //print(e);
    print(e);
  } finally {
    print("Final");
  }
}
