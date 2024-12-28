import 'package:flutter/material.dart';
import 'package:feather_icons/feather_icons.dart';
import 'package:todoapp/addTodo.dart';

class Mainscreen extends StatefulWidget {
  const Mainscreen({super.key});

  @override
  State<Mainscreen> createState() => _MainscreenState();
}

class _MainscreenState extends State<Mainscreen> {
  String text = 'Simple Text';

  void changeText() {
    setState(() {
      text = 'Text Changed';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        centerTitle: true,
        title: Text('Lote Sa Yar'),
        actions: [
          InkWell(
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: MediaQuery.of(context).viewInsets,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        height: 225,
                        child: AddTodo(
                          changeText: changeText,
                        ),
                      ),
                    );
                  });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
              ),
            ),
          )
        ],
      ),
      body: Container(
        child: Text('$text'),
      ),
    );
  }
}
