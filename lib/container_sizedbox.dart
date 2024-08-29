import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  const ContainerSizedBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.red,
                margin: const EdgeInsets.only(left: 20),
                padding: const EdgeInsets.all(10),
                width: 100,
                height: 100,
                child: Container(
                  color: Colors.orange,
                ),
              ),
              Container(
                color: Colors.yellow,
                width: 100,
                height: 100,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.green,
                width: 100,
                height: 100,
              ),
              Container(
                // color: Colors.purple,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    // color: Colors.purple,
                    border: Border.all(color: Colors.black, width: 5),
                    // borderRadius: const BorderRadius.only(
                    //     topLeft: Radius.circular(10),
                    //     bottomRight: Radius.circular(20)),
                    gradient: const LinearGradient(
                        colors: [Colors.blue, Colors.red],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    image: const DecorationImage(
                        image: NetworkImage('https://i.pinimg.com/originals'),
                        fit: BoxFit.fitWidth),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          spreadRadius: 5,
                          blurRadius: 2,
                          offset: const Offset(5, 5))
                    ],
                    shape: BoxShape.circle),
              ),
            ],
          ),
          const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Perbedaan Container dengan SizedBox adalah SizedBox memiliki sedikit object dalamnya sehingga memiliki size yang lebih kecil untuk memory
            SizedBox(
                width: 200,
                // height: 200,
                child: Text("Halo gaes, ini uji coba sizedbox")),
            SizedBox(height: 20),
            Text("Ya coba aja si buat belajar")
          ])
        ],
      ),
    );
  }
}
