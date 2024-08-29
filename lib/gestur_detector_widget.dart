import 'dart:developer';

import 'package:flutter/material.dart';

class GestureDetectorWidget extends StatelessWidget {
  const GestureDetectorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal.shade200,
          title: const Text('Gesture Detector'),
        ),
        body: Center(
          child: GestureDetector(
            // single click / touch kalo di hp
            // onTap: () => log('Tapped'),
            // onTapDown: (details) => log(
            //     'Tapped down at ${details.globalPosition} ${details.localPosition} ${details.kind}'),
            // onTapUp: (details) => log(
            //     'Tapped Up at ${details.globalPosition} ${details.localPosition} ${details.kind}'),
            // onTapCancel: () => log('Tapped Cancel'),

            // double click / double touch kalo di hp
            // onDoubleTap: () => log('Double Tapped'),
            // onDoubleTapDown: (details) => log(
            //     'Double Tapped down at ${details.globalPosition} ${details.localPosition} ${details.kind}'),
            // onDoubleTapCancel: () => log('Double Tapped Cancel'),

            // long click / long touch kalo di hp
            onLongPress: () => log('Long Pressed'),
            onLongPressDown: (details) => log(
                'Long Pressed down at ${details.globalPosition} ${details.localPosition} ${details.kind}'),
            onLongPressStart: (details) => log(
                'Long Pressed Start at ${details.globalPosition} ${details.localPosition}'),
            onLongPressUp: () => log('Long Pressed Up'),
            onLongPressEnd: (details) => log(
                'Long Pressed End at ${details.globalPosition} ${details.localPosition}'),
            onLongPressMoveUpdate: (details) => log(
                'Long Pressed Move Update at ${details.globalPosition} ${details.localOffsetFromOrigin} ${details.localPosition} ${details.localOffsetFromOrigin}'),
            onLongPressCancel: () => log('Long Pressed Cancel'),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.red, Colors.blue])),
            ),
          ),
        ));
  }
}
