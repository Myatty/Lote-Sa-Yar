import 'package:flutter/material.dart';

class AddTodo extends StatefulWidget {

  void Function({required String todoText}) changeText;

  AddTodo({super.key, required this.changeText});

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
          padding: const EdgeInsets.only(top: 15.0), // Add padding to the top
          child: ElevatedButton(
            onPressed: () {
              widget.changeText(todoText: todoText.text);
              todoText.clear();
            },
            child: Text("Lote ml"),
          ),
        ),
      ],
    );
  }
}
