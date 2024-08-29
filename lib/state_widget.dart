import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StateWidget extends StatefulWidget {
  const StateWidget({super.key});

  @override
  State<StateWidget> createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Widget'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            '$number',
            style: GoogleFonts.poppins(fontSize: 30),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  number++;
                });
                log('$number');
              },
              child: const Text('Increment'))
        ]),
      ),
    );
  }
}
