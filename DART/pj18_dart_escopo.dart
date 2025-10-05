int a = 0;

void main() {
  a = 10;

  void funcao() {
    a = 50;

    int b = 5;
    b = 10;

    void funcao2(int c) {
      b = 20;

      int c = 30;
      print(c);
    }

    c = 40;
  }

  funcao(); //Exemplos dessa hierarquia
  funcao2(); //Exemplos dessa hierarquia

  b = 10; //Exemplos dessa hierarquia
}

/*Tudo que estiver fora do escopo é acessível, mas o que estiver dentro, não
Basicamente, seguindo uma ordem de "hierarquias"*/
