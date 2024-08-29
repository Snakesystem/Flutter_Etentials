import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text('Padding Widget'),
      ),
      body: const Row(children: [
        Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0), child: Text("Lorem")),
        Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0), child: Text("Ipsum")),
        Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0), child: Text("Dolor")),
        Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0), child: Text("Sit")),
        Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 10, 0), child: Text("Amet")),
      ]),
    );
  }
}
