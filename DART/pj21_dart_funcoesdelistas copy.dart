void main() {
  List<String> nomes = ["Daniel", "Ciolfi", "Henrique"];

  print(nomes);

  List<int> idades = [12, 32, 56, 78];

  print(idades);

  print(idades.length); //Imprime a quantidade de itens em uma lista
  print(idades.first); //Imprime o primeiro item da lsita
  print(idades.last); //Imprime o último item da lista
  print(idades[0]); //
  print(idades[1]); // // Imprime um item especifico da lista
  print(idades[2]); //
  print(idades[3]); //

  idades.add(4);

  idades.addAll(
    [567, 25, 4634],
  ); //tambem pode se colocar um nome de uma outras lista, ex: idades.addAll(outrasIdades);

  idades.insert(
    0,
    -2,
  ); //coloca o -2 no indice 0 da lista -> .insert adiciona em indices especificos e joga para a direita o resto

  idades.contains(
    50,
  ); //retorna um bool, se possui ou não aquele valor dentro da lsita.

  idades.indexOf(56); //retorna qual o índice de tal valor

  idades.remove(
    4,
  ); //remove o valor da lista -> tambem retorna um bool, como indicador de sucesso

  idades.removeAt(
    3,
  ); //remove o valor mas encontrando pelo index, tambem tem o indicador de sucesso bool

  idades.shuffle(); //embaralha os valores dentro de uma lista

  idades.clear(); //limpa toda a lista

  print(idades);
}
