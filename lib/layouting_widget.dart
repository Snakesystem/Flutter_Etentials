import 'package:flutter/material.dart';

class LayoutingWidget extends StatelessWidget {
  const LayoutingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey.shade300,
          title: const Text("Layouting Widget Stack & Wrap"),
        ),
        body: Column(children: [
          Container(
            width: 300,
            height: 300,
            margin: const EdgeInsets.only(bottom: 20),
            color: Colors.yellow.shade200,
            child: Stack(alignment: Alignment.center, children: [
              // stack ini mirip dengan z index
              Container(
                color: Colors.grey.withOpacity(0.5),
                child: Container(
                  margin: const EdgeInsets.all(0),
                  color: Colors.red,
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  color: Colors.green,
                  width: 100,
                  height: 100,
                ),
              ),
              Container(
                color: Colors.grey.withOpacity(0.5),
                child: Container(
                  margin: const EdgeInsets.all(40),
                  color: Colors.blue,
                  width: 100,
                  height: 100,
                ),
              ),
            ]),
          ),
          Container(
            color: Colors.grey.shade200,
            child: Wrap(
              // direction: Axis.vertical,
              alignment: WrapAlignment.spaceEvenly,
              runAlignment: WrapAlignment.center, // mengatur widget wrap
              crossAxisAlignment:
                  WrapCrossAlignment.center, // mengatur isi dari widget wrap
              verticalDirection: VerticalDirection.up, // mengatur urutan widget
              spacing: 10,
              runSpacing: 5,
              children: List.generate(
                  8,
                  (index) => Container(
                        width: index % 2 == 0 ? 120 : 90,
                        height: index % 2 == 0 ? 120 : 90,
                        color: index % 2 == 0 ? Colors.red : Colors.green,
                        child: Center(
                          child: Text(
                            index.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 50),
                          ),
                        ),
                      )),
            ),
          )
        ]));
  }
}
