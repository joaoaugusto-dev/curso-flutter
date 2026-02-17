import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Adicione uma tarefa",
                        hintText: "Ex. Estudar Flutter",
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00d7f3),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: Icon(Icons.add, size: 30, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ListView(
                shrinkWrap: true,
                children: [
                  ListTile(
                    leading: Icon(Icons.save, size: 30),
                    title: Text("Tarefa 1"),
                    subtitle: Text("17/02/2026"),
                    onTap: () {
                      print("Tarefa 1");
                    },
                  ),
                  ListTile(
                    leading: Icon(Icons.person, size: 30),
                    title: Text("Tarefa 2"),
                    subtitle: Text("17/02/2026"),
                    onTap: () {
                      print("Tarefa 2");
                    },
                  ),
                ],
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(child: Text("Você possui 0 tarefas pendentes.")),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff00d7f3),
                      padding: const EdgeInsets.all(12),
                    ),
                    child: Text(
                      "Limpar tudo",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
