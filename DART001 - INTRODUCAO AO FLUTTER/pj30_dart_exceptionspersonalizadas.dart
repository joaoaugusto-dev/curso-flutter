void main() {
  try {
    funcao(-2);
  } on VoceEstaFazendoBesteira {
    print("Besteira!");
  } catch (e) {
    print(e);
  }
}

void funcao(int x) {
  if (x <= 0) {
    throw VoceEstaFazendoBesteira();
  }
  print(x);
}

class VoceEstaFazendoBesteira implements Exception {
  String toString() {
    return "Você não pode passar um valor <= 0.";
  }
}
