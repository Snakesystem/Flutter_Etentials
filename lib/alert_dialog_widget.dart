import 'dart:developer';

import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  const AlertDialogWidget({super.key});

  @override
  State<AlertDialogWidget> createState() => _AlertDialogWidgetState();
}

class _AlertDialogWidgetState extends State<AlertDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade300,
          title: const Text('Alert Dialog'),
        ),
        body: Center(
            child: ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                            title: const Text('Warning!'),
                            content: const Text("Woi atiati coy !"),
                            icon: const Icon(Icons.warning, color: Colors.red),
                            backgroundColor: Colors.amber.shade100,
                            actionsAlignment: MainAxisAlignment.center,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'OK');
                                  },
                                  child: const Text('OK')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Kembali');
                                  },
                                  child: const Text('Kembali')),
                            ],
                          )).then((value) => log(value ?? 'Kosong anjay'));
                },
                child: const Text('Warning!'))));
  }
}
