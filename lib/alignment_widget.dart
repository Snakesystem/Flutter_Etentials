import 'package:flutter/material.dart';

class AlignmentWidget extends StatelessWidget {
  const AlignmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text("Alignment Widget"),
      ),
      body: const Align(
        // alignment: Alignment.center,
        alignment: Alignment(-0.5, -0.5), // decimal or negatif
        child: Text("Hello World!"),
      ),
    );
  }
}
