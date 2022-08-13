import 'package:flutter/material.dart';
import 'package:vendemovil/features/seller/presentation/pages/seller_list_page_view.dart';
import '../../features/menu/presentation/pages/home.dart';
import '../../features/product/presentation/product_page.dart';
import '../../features/sale/presentation/pages/scanner.dart';

var customerRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/Products': (context) => const ProductPageView(),
  '/Scanner': (context) => const QRViewExample(),
  '/Sellers': (context) => const SellerListView(),
};
