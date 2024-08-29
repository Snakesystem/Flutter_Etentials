import 'package:flutter/material.dart';

class AboutDialogWidget extends StatefulWidget {
  const AboutDialogWidget({super.key});

  @override
  State<AboutDialogWidget> createState() => _AboutDialogWidgetState();
}

class _AboutDialogWidgetState extends State<AboutDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text('About Dialog Widget'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AboutDialog(
                    applicationName: 'Hello World',
                    applicationIcon: Icon(Icons.favorite),
                    applicationVersion: '1.0.0',
                    applicationLegalese: '© 2022 Your Company Name',
                    children: [
                      Text('Digunakan untuk memberikan info tentang aplikasi'),
                    ],
                  ),
                );
              },
              child: const Text('About')),
        ),
      ),
    );
  }
}
