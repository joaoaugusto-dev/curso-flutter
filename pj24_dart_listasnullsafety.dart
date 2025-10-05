void main() {
  List<String> lista1 = [];

  lista1.add("Daniel");

  List<String>? lista2;

  if (lista2 != null) {
    lista2.add(
      "Ciolfi",
    ); //aqui ele barra dizendo que a condicao sempre sera false,pois o operando sempre iniciara null
  }

  List<String?>? lista3;

  if (lista3 != null) {
    lista2.add(
      null,
    ); //me parece que algo atualizou no dart e ele nao deixa mais usar esse tipo de lista
  }

  List<String?> lista4 = [];
  lista4.add(null);
}
