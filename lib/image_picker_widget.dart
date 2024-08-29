import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatefulWidget {
  const ImagePickerWidget({super.key});

  @override
  State<ImagePickerWidget> createState() => _ImagePickerWidgetState();
}

class _ImagePickerWidgetState extends State<ImagePickerWidget> {
  XFile? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber.shade100,
        title: const Text('Image Picker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(children: [
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              color: image == null ? Colors.grey.shade300 : null,
              image: image != null
                  ? DecorationImage(image: FileImage(File(image!.path)))
                  : null,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () async {
              ImagePicker()
                  .pickImage(source: ImageSource.gallery)
                  .then((value) {
                setState(() {
                  image = value;
                });
              });
            },
            child: const Text('Pick Image'),
          ),
          ElevatedButton(
            onPressed: () {
              ImagePicker()
                  .pickImage(
                      source: ImageSource.camera,
                      preferredCameraDevice: CameraDevice.front)
                  .then((value) {
                setState(() {
                  image = value;
                });
              });
            },
            child: const Icon(Icons.camera_alt),
          ),
        ]),
      ),
    );
  }
}
