import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  final String description;
  const ProductDescription({Key? key, required this.description})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text(
        description,
        style: const TextStyle(fontSize: 25.0, color: Colors.brown),
        textAlign: TextAlign.center,
      ),
    );
  }
}
