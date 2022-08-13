import 'package:flutter/material.dart';
import 'package:vendemovil/core/widgets/custom_text_style.dart';
import 'package:vendemovil/widgets/custom_app_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SellerListView extends StatelessWidget {
  const SellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sellers = List<String>.generate(500, (i) => "Vendedor $i");
    return Scaffold(
      appBar: const CustomAppBar(title: "Vendedores"),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Flexible(
          child: ListView.builder(
            itemCount: sellers.length,
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.only(right: 8, left: 8, top: 1, bottom: 1),
                child: buildSellerCard(sellers, index),
              );
            },
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Nuevo vendedor",
        backgroundColor: Colors.orangeAccent,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  Widget buildSellerCard(List<String> sellers, int index) {
    return Card(
      color: Colors.blueGrey.shade50,
      child: ListTile(
        leading: const CircleAvatar(
          backgroundImage: AssetImage('assets/images/seller.jpg'),
        ),
        title: Text(
          sellers[index],
          style: CustomTextStyle.cardItemTextStyle,
        ),
        subtitle: const Text(
          "Comision: 0%",
          style: CustomTextStyle.cardItemTextStyle,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.pencil,
                color: Colors.blue,
                size: 20,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const FaIcon(
                FontAwesomeIcons.trash,
                color: Colors.red,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
