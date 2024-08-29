import 'dart:developer';

import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatefulWidget {
  const SimpleDialogWidget({super.key});

  @override
  State<SimpleDialogWidget> createState() => _SimpleDialogWidgetState();
}

class _SimpleDialogWidgetState extends State<SimpleDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text("Simple Dialog"),
      ),
      body: Center(
        child: SizedBox(
            width: 300,
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => SimpleDialog(
                            title: const Text(
                              "Simple Dialog",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            contentPadding:
                                const EdgeInsets.fromLTRB(24, 12, 24, 16),
                            children: [
                              const Text("Hello World"),
                              const SizedBox(
                                height: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  SimpleDialogOption(
                                    child: const Text("Yes"),
                                    onPressed: () {
                                      Navigator.pop(context, "Yes");
                                    },
                                  ),
                                  SimpleDialogOption(
                                    child: const Text("No"),
                                    onPressed: () {
                                      Navigator.pop(context, "No");
                                    },
                                  ),
                                ],
                              )
                            ],
                          )).then((value) => log(value ?? 'Kosong anjay'));
                },
                child: const Text("Simple Dialog"))),
      ),
    );
  }
}
