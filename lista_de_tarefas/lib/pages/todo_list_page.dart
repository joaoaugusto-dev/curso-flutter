import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            decoration: InputDecoration(
              labelText: 'E-mail:',
              hintText: 'exemplo@exemplo.com',
              //border: InputBorder.none,
              errorText: /*'Campo obrigatório!'*/ null,
              prefixText: 'R\$ ',
              suffixText: 'cm',
            ),
            //obscureText: true,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight(700),
              color: Colors.purple,
            ),
          ),
        ),
      ),
    );
  }
}
