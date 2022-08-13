import 'package:flutter/material.dart';
import 'package:vendemovil/core/widgets/custom_text_style.dart';

class BottomWidget extends StatelessWidget {
  final int totalSale;
  const BottomWidget({Key? key, required this.totalSale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      primary: Colors.deepOrange,
      textStyle: const TextStyle(fontSize: 15),
      shape: const BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(3))),
    );
    return Expanded(
      child: Align(
        alignment: FractionalOffset.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Divider(),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.blueAccent.shade700,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "\$$totalSale",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 100,
                    padding: const EdgeInsets.all(20.0),
                    child: ElevatedButton.icon(
                      icon: const Icon(Icons.payment),
                      style: style,
                      onPressed: () => {},
                      label: const Text('Pagar',
                          style: CustomTextStyle.buttonTextStyle),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
