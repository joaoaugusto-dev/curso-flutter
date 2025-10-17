void main() {
  RepositorioPessoas repo = RepositorioPessoasRemote();
  //ou RepositorioPessoas repo = RepositorioPessoasLocal();
  repo.ler(10);
  repo.adicionar("Ciolfi");
  repo.apagar(5);
  repo.apagarTodos();
}

abstract class RepositorioPessoas {
  String ler(int i);
  void adicionar(String nome);
  void apagar(int i);
  void apagarTodos();
}

//repositorio é onde guarda, le, e armazena dados
class RepositorioPessoasRemote implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return "Ciolfi";
  }

  @override
  void apagarTodos() {
    // TODO: implement apagarTodos
  }
}

class RepositorioPessoasLocal implements RepositorioPessoas {
  @override
  void adicionar(String nome) {
    // TODO: implement adicionar
  }

  @override
  void apagar(int i) {
    // TODO: implement apagar
  }

  @override
  String ler(int i) {
    return "Daniel";
  }

  @override
  void apagarTodos() {
    // TODO: implement apagarTodos
  }
}
