import 'package:flutter/material.dart';

import 'package:vendemovil/features/product/widgets/bottom_menu.dart';
import 'package:vendemovil/features/product/widgets/product_description.dart';
import 'package:vendemovil/features/product/widgets/product_image.dart';
import 'package:vendemovil/features/product/widgets/product_price.dart';

import '../../../widgets/custom_app_bar.dart';

class ProductPageView extends StatelessWidget {
  final List<String>? listBarCode;
  const ProductPageView({Key? key, this.listBarCode}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Productos"),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ProductImage(),
            const ProductDescription(
              description: "FANTA DESECHABLE 2 LT NARANJA",
            ),
            ConstrainedBox(
              constraints: const BoxConstraints(maxHeight: 100, maxWidth: 500),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.blue,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ProductPrice(
                    price: "\$3.990",
                  ),
                ),
              ),
            ),
            const ProductPrice(price: "\$3.990"),
            GestureDetector(
              child: const Text("Pincha aqui"),
              onTap: () {},
            ),
            listBarCode == null
                ? const Text('Empty')
                : ListView.builder(
                    itemCount: listBarCode!.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return Text(listBarCode![index]);
                    },
                  )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Scanner');
        },
        tooltip: "Editar",
        backgroundColor: Colors.orangeAccent,
        child: const Icon(Icons.edit),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: const ProductBottomMenu(),
    );
  }
}
