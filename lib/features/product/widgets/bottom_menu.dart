import 'package:flutter/material.dart';

class ProductBottomMenu extends StatefulWidget {
  const ProductBottomMenu({Key? key}) : super(key: key);
  @override
  State<ProductBottomMenu> createState() => _ProductBottomMenuState();
}

class _ProductBottomMenuState extends State<ProductBottomMenu> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        elevation: 10,
        backgroundColor: Colors.deepOrange,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        unselectedItemColor: Colors.white60,
        selectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
              label: 'Ventas', icon: Icon(Icons.monetization_on)),
          BottomNavigationBarItem(
              label: 'Compras', icon: Icon(Icons.shopping_bag)),
          BottomNavigationBarItem(
              label: 'Inventario', icon: Icon(Icons.inventory_2)),
          BottomNavigationBarItem(label: 'logout', icon: Icon(Icons.logout)),
        ]);
  }
}
