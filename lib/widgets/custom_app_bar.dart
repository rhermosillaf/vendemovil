import 'package:flutter/material.dart';
import 'package:vendemovil/core/widgets/custom_text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: CustomTextStyle.appBarTextStyle,
      ),
      centerTitle: true,
      elevation: 0.0,
      iconTheme: const IconThemeData(
        size: 30, //change size on your need
        color: Colors.blue, //change color on your need
      ),
      backgroundColor: Colors.white,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
