import 'dart:developer';

import 'package:flutter/material.dart';

class Products {
  final String name;

  Products({required this.name});
}

class DropdownButtonWidget extends StatefulWidget {
  const DropdownButtonWidget({super.key});

  @override
  State<DropdownButtonWidget> createState() => _DropdownButtonWidgetState();
}

class _DropdownButtonWidgetState extends State<DropdownButtonWidget> {
  List<Products> products = [
    Products(name: 'Product 1'),
    Products(name: 'Product 2'),
    Products(name: 'Product 3'),
    Products(name: 'Product 4'),
    Products(name: 'Product 5'),
  ];

  Products? selectedProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade300,
        title: const Text('Dropdown Button Widget'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: DropdownButton<Products>(
            items: products
                .map((Products product) => DropdownMenuItem<Products>(
                    value: product, child: Text(product.name)))
                .toList(),
            value: selectedProduct,
            onChanged: (Products? value) {
              log('Value: $selectedProduct');
              setState(() {
                selectedProduct = value;
              });
            },
            isExpanded: true,
            icon: const Icon(Icons.add_box_sharp),
            hint: const Text('Select Product'),
          ),
        ),
      ),
    );
  }
}
