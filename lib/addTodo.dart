import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {
  const AddTodo({super.key});

  @override
  State<AddTodo> createState() => _AddTodoState();
}

class _AddTodoState extends State<AddTodo> {
  TextEditingController todoText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            'Lote Sa Yr',
          ),
        ),
        TextField(
          controller: todoText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(5),
              hintText: 'Br lote Sayr Shi thy pr tha ll ... '),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0), // Add padding to the top
          child: ElevatedButton(
            onPressed: () {},
            child: Text("Lote ml"),
          ),
        ),
      ],
    );
  }
}
