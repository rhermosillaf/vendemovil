import 'package:flutter/material.dart';
import 'package:vendemovil/features/credit/widgets/bottom_button.dart';

import '../../../widgets/custom_app_bar.dart';
import '../widgets/credit_avatar.dart';

class CreditPageView extends StatelessWidget {
  const CreditPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Fiados"),
      body: Center(
        child: Column(
          children: const [
            CreditAvatar(),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "PERICO LOS PALOTES",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Deuda: \$25.900",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Disponible: \$74.100",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Próximo vencimiento: 15/07/2022",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            BottomButton(),
          ],
        ),
      ),
    );
  }
}
