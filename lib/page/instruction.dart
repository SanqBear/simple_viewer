import 'package:flutter/material.dart';
import 'package:simple_viewer/page/menu.dart';

class InstructionPage extends StatefulWidget {
  const InstructionPage({Key? key, required this.callback}) : super(key: key);
  final Function callback;

  @override
  State<InstructionPage> createState() => _InstructionPageState();
}

class _InstructionPageState extends State<InstructionPage> {
  @override
  Widget build(BuildContext context) {
    final Function updateUrl = widget.callback;

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Please enter the URL of the JSON file',
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'URL',
              ),
              onChanged: (text) {
                updateUrl(text);
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuPage(),
                ),
              );
            },
            child: const Text('Submit'),
          ),
        ],
      ),
    ));
  }
}
