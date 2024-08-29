import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Column & Row"),
      ),
      body: const Column(children: [
        Text("Hello 1"),
        Row(children: [Text("World 1"), Text("World 2"), Text("World 3")]),
        Text("Hello 2")
      ]),
    );
  }
}
