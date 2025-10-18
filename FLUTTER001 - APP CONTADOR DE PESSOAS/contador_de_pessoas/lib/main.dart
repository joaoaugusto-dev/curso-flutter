import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

//se digitar stless ele gera toda essa estrutura automaticamente
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void decrement() {
    print("Decrement");
  }

  void increment() {
    print("Increment");
  }

  @override
  Widget build(BuildContext context) {
    //base de tudo, andaime
    return Scaffold(
      backgroundColor: Colors.red,
      //coluna
      body: Column(
        //centralizacao
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          const Text(
            "Pode entrar!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              //letterSpacing: 1,
              //backgroundColor: Colors.white,
            ),
          ),
          const Text(
            "0",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: decrement,
                child: Text(
                  "Saiu",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              TextButton(
                onPressed: increment,
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
    );
  }
}
