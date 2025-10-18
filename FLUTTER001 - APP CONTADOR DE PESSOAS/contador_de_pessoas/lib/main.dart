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

  @override
  Widget build(BuildContext context) {
    //base de tudo, andaime
    return Scaffold(
      backgroundColor: Colors.black,
      //coluna
      body: Column(
        //centralizacao
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: const [
          Text(
            "Pode entrar!",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w700,
              //letterSpacing: 1,
              //backgroundColor: Colors.white,
            ),
          ),
          Text(
            "0",
            style: TextStyle(
              fontSize: 100,
              color: Colors.white,
            ),
          ),
          Row(),
        ],
      ),
    );
  }
}
