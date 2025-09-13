void main() {
  String linguagem = "HTML";

  if (linguagem == "Dart") {
    print("Linguagem muito legal!");
  } else if (linguagem == "C") {
    print("Linguagem complicada.");
  } else if (linguagem == "Swift") {
    print("Complicada também");
  } else {
    print("Desconhecida!");
  }

  switch (linguagem) {
    case "Dart":
      print("Linguagem muito legal!");
      break;
    case "C":
      print("Linguagem complicada.");
      break;
    case "Swift":
      print("Complicada também");
      break;
    default:
      print("Desconhecida!");
      break;
  }

  int n = 10;

  switch (n) {
    case 10:
      print("10");
      break;
    case 20:
      print("Olá!");
      break;
    default:
      print("Término da aula");
      break;
  }
}
