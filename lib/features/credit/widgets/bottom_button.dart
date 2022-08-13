import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 15),
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3))),
    );
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Container(
          width: 250,
          height: 100,
          padding: const EdgeInsets.all(20.0),
          child: ElevatedButton.icon(
            icon: const Icon(Icons.save),
            style: style,
            onPressed: () => {},
            label: const Text('Guardar'),
          ),
        ),
      ),
    );
  }
}
