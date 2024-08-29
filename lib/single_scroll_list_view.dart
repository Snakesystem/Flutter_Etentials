import 'dart:developer';

import 'package:flutter/material.dart';

class SingleScrollListView extends StatefulWidget {
  const SingleScrollListView({super.key});

  @override
  State<SingleScrollListView> createState() => _SingleScrollListViewState();
}

class _SingleScrollListViewState extends State<SingleScrollListView> {
  TextEditingController textEditingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade300,
          title: const Text('Single Scroll View &  List View'),
        ),
        body: ListView(
          children: createContainers(),
        ));
  }

  List<Widget> createContainers() => List.generate(30, (index) {
        return Builder(builder: (context) {
          log('Rendering container $index');
          // widget untuk membuat widget tidak terbatas
          return UnconstrainedBox(
            child: Container(
              height: 100,
              width: 100,
              color: Colors.red,
              margin: const EdgeInsets.all(20),
              child: Center(
                child: Text(
                  index.toString(),
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        });
      });
}
