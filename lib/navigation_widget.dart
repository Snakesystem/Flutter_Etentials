import 'dart:developer';

import 'package:flutter/material.dart';

class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade100,
          title: const Text("Navigation Widget"),
        ),
        body: Center(
          child: SizedBox(
            width: 300,
            child: ElevatedButton(
                onPressed: () {
                  // Kalo di klick halaman sebelumnya di timpa
                  Navigator.push<String>(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  ).then((value) => log(value ?? 'Kosong anjay'));
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const SecondPage()),
                  );

                  // Kalo di klik halaman sebelumnya di buang
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const SecondPage()),
                  // );
                },
                child: const Text("Go to Second Page")),
          ),
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade100,
        title: const Text('Second Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SecondPage()));
                },
                child: const Text('Go to second page again'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'Barusan tadi dari second page');
                },
                child: const Text('Back'),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                child: const Text('Back to Main Page'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
