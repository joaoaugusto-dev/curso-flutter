void main() {
  // São parâmetros posicionais, então mesmo sendo opcionais, se tiver alguem "na frente" será necessário ser passado.
  saudacoes('Daniel', sep: "*");
  saudacoes('João', mostrarAgora: false);
}

//Passando os parâmetros nos "()"
//Os colchetes mostram que aquele parâmetro é opcional, e você pode definir um valor padrão para ele.
//[colchetes se tornam padroes/opcionais mas posicionais], enquanto {chaves são opcionais e não posicionais} - [bool mostrarAgora = true, String sep = "-"] ou {bool mostrarAgora = true, String sep = "-"}
void saudacoes(String nome, {bool mostrarAgora = true, String sep = "-"}) {
  print(sep * 20); //Multiplicando os caracteres
  print("Saudações do $nome");
  print("Seja bem-vindo(a)!");
  if (mostrarAgora) {
    print("Agora: ${agora()}");
  }
}

String agora() {
  //Como ela retorna (return) um valor, ela não pode ser void, e no caso dela ser String, também eé definida aqui em cima como uma String.
  DateTime agora = DateTime.now();
  return agora.toString();
}
