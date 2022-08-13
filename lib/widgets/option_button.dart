import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vendemovil/core/widgets/custom_text_style.dart';
import 'package:vendemovil/features/menu/presentation/bloc/home_bloc.dart';
import 'package:vendemovil/features/menu/presentation/bloc/home_bloc_event.dart';
import '../features/credit/presentation/credit_page.dart';

class OptionButton extends StatelessWidget {
  final Color? color;
  final String title;
  final String image;
  const OptionButton({
    Key? key,
    required this.color,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.0,
      width: 100.0,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20.0)),
      ),
      child: InkWell(
        onTap: () {
          if (title == "Productos") {
            Navigator.pushNamed(context, '/Products');
            BlocProvider.of<HomeBloc>(context)
                .onEvent(const LoadHomeEvent("1"));
          }

          title == "Fiados"
              ? Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CreditPageView()),
                )
              : Container();

          title == "Ventas"
              ? Navigator.pushNamed(context, '/Scanner')
              : Container();

          title == "Vendedores"
              ? Navigator.pushNamed(context, '/Sellers')
              : Container();
        },
        child: Ink(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade600,
                spreadRadius: 1,
                blurRadius: 5,
                offset: const Offset(5, 5),
              ),
              const BoxShadow(
                  color: Colors.white,
                  offset: Offset(-5, -5),
                  blurRadius: 5,
                  spreadRadius: 1),
            ],
            //color: color,
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage(image),
                  ),
                ),
                Text(
                  title,
                  style: CustomTextStyle.homeItemTextStyle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
