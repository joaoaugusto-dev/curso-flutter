void main() {
  //var -> tipo que adapta quando é declarada, mas a partir dai, nao pode ser alterado
  var nome = "Daniel";
  nome = "Ciolfi";
  nome = 3;

  var idade = 40;
  idade++;

  //dynamic -> tipo que se adapta a qualquer momento do código
  dynamic variavel = "Daniel";
  variavel = 3;
  variavel = true;

  //ele nao é seguro fazer nenhuma operacao com ele, podendo dar crash
  variavel++;

  //num -> tipo que aceita numeros inteiros e numeros com virgula (decimal)
  num numero = 1.4;

  void funcao(num numero) {}
}
