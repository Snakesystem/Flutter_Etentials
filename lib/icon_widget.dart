import 'package:flutter/material.dart';
// import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade300,
        title: const Text('Icon Widget'),
      ),
      body: const Center(
        child: Icon(
          Icons.add_circle,
          size: 75,
          color: Colors.blue,
          shadows: [
            Shadow(color: Colors.black54, offset: Offset(3, 3), blurRadius: 8)
          ],
        ),
      ),
    );
  }
}
