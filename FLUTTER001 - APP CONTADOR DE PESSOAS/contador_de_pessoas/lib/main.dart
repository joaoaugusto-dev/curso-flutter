import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//se digitar stless ele gera toda essa estrutura automaticamente
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int contador = 0;

  /*void decrement() {
    if (contador > 0) {
      setState(() {
        contador--;
      });
    }
    print(contador);
  }

  void increment() {
    //toda vez que isso acontecer, ele redefine o estado, "atualiza"
    if (contador < 20) {
      setState(() {
        contador++;
      });
    }
    print(contador);
  }

  String estadoLotacaoString() {
    if (contador < 20) {
      return "Pode entrar!";
    } else {
      return "Lotação completa!";
    }
  }

  Color estadoLotacaoColor() {
    if (contador < 20) {
      return Colors.white;
    } else {
      return Color.fromRGBO(255, 87, 104, 1);
    }
  }*/

  void decrement() {
    setState(() {
      contador--;
    });
    print(contador);
  }

  void increment() {
    //toda vez que isso acontecer, ele redefine o estado, "atualiza"
    setState(() {
      contador++;
    });
    print(contador);
  }

  bool get isEmpty => contador == 0;
  bool get isFull => contador == 20;

  @override
  Widget build(BuildContext context) {
    //base de tudo, andaime
    return Scaffold(
      backgroundColor: Colors.red,
      //coluna
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/image.jpg",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            60,
            220,
            60,
            220,
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color.fromARGB(
                210,
                0,
                0,
                0,
              ),
              borderRadius: BorderRadius.circular(
                32,
              ),
            ),
            child: Column(
              //centralizacao
              mainAxisAlignment:
                  MainAxisAlignment.center,
              children: [
                Text(
                  isFull
                      ? "Lotação Completa!"
                      : "Pode entrar!",
                  style: TextStyle(
                    fontSize: 30,
                    color: isFull
                        ? Color.fromRGBO(
                            255,
                            87,
                            104,
                            1,
                          )
                        : Colors.white,
                    fontWeight: FontWeight.w700,
                    //letterSpacing: 1,
                    //backgroundColor: Colors.white,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    0,
                    32,
                    0,
                    32,
                  ),
                  child: Text(
                    contador.toString(),
                    style: const TextStyle(
                      fontSize: 100,
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: isEmpty
                          ? null
                          : decrement,
                      style: TextButton.styleFrom(
                        backgroundColor: isEmpty
                            ? const Color.fromARGB(
                                130,
                                255,
                                255,
                                255,
                              )
                            : Colors.white,
                        fixedSize: const Size(
                          100,
                          100,
                        ),
                        foregroundColor: Colors
                            .black, //primary foi trocado pelo foregroundColor
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                16,
                              ),
                        ),
                      ),
                      child: Text(
                        "Saiu",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(width: 32),
                    TextButton(
                      onPressed: isFull
                          ? null
                          : increment,
                      style: TextButton.styleFrom(
                        backgroundColor: isFull
                            ? const Color.fromARGB(
                                130,
                                255,
                                255,
                                255,
                              )
                            : Colors.white,
                        fixedSize: const Size(
                          100,
                          100,
                        ),
                        foregroundColor: Colors
                            .black, //primary foi trocado pelo foregroundColor
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(
                                16,
                              ),
                        ),
                      ),
                      child: Text(
                        "Entrou",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
