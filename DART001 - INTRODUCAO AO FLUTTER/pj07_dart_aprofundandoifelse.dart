void main() {
  double nota = 3;
  double exame = 3;

  /*if (nota >= 5.0) {
    print("Aprovado!");
  } else if (nota >= 3.5) {
    print("Exame!");
    if (exame >= 7) {
      print("Aprovado no exame!");
    } else {
      print("Reprovado no exame!");
    }
  } else {
    print("Reprovado!");
  }*/

  if (nota >= 5) {
    print("Aprovado!");
  } else if (nota >= 3.5 && exame >= 7) {
    print("Aprovado no exame!");
  } else if (nota >= 3.5) {
    print("Reprovado no exame!");
  } else {
    print("Reprovado!");
  }

  //Essa estrutura não foi apresentada na aula, mas desenvoli ela focando mais na hierarquia, que ao meu ver, deixa o código semânticamente melhor
  if (nota >= 5) {
    print("Aprovado!");
  } else {
    if (nota >= 3.5) {
      if (exame >= 7) {
        print("Aprovado no exame!");
      } else {
        print("Reprovado no exame!");
      }
    } else {
      print("Reprovado!");
    }
  }
}
