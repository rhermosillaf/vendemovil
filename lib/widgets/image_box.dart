import 'package:flutter/material.dart';

class ImageAvatar extends StatelessWidget {
  const ImageAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 120.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: const DecorationImage(
          image: NetworkImage(
              'https://i0.wp.com/www.universomarvel.com/wp-content/uploads/2021/04/heroes-marvel-JRjr.jpg?ssl=1'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
