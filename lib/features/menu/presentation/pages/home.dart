import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/option_button.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_bloc_state.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final String btnNro = "1";

  @override
  Widget build(BuildContext context) {
    //final HomeBloc homeBloc = BlocProvider.of<HomeBloc>(context);
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: Scaffold(
        appBar: const CustomAppBar(title: "Vendedores"),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                // <-- SEE HERE
                arrowColor: Colors.blue,
                decoration: BoxDecoration(color: Color(0xff764abc)),
                accountName: Text(
                  "Usuario Vendemovil",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "boliche25@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              ListTile(
                leading: const Icon(
                  Icons.account_circle,
                ),
                title: const Text('Mi cuenta'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.help_rounded,
                ),
                title: const Text('Ayuda'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage("assets/images/fondo.jpeg"),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.1), BlendMode.dstATop),
                ),
              ),
              child: ListView(
                children: [
                  const SizedBox(height: 40),
                  rowButtons1(),
                  const SizedBox(height: 40),
                  rowButtons2(),
                  const SizedBox(height: 40),
                  rowButtons3(),
                  const SizedBox(height: 40),
                  Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Container(
                        height: 150,
                        margin: const EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          border: Border.all(
                            color: Colors.blue,
                            width: 0.5,
                          ),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(20),
                          ),
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
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.warning_amber_outlined,
                                  color: Colors.red,
                                ),
                                Text(
                                  "Alertas de pedidos próximos dias: 0",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.currency_exchange,
                                  color: Colors.green.shade900,
                                ),
                                Text(
                                  "Alertas de pagos próximos dias: 0",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.blue.shade900,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 250,
                        height: 40,
                        margin: const EdgeInsets.only(left: 10),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Te mantenemos informado!",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget rowButtons1() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          OptionButton(
            color: Colors.red,
            title: "Productos",
            image: "assets/icons/products.png",
          ),
          OptionButton(
            color: Colors.green,
            title: "Ventas",
            image: "assets/icons/supply.png",
          ),
          OptionButton(
            color: Colors.blue,
            title: "Fiados",
            image: "assets/icons/credit.png",
          ),
        ],
      ),
    );
  }

  Widget rowButtons2() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          OptionButton(
            color: Colors.brown,
            title: "Reportes",
            image: "assets/icons/report.png",
          ),
          OptionButton(
            color: Colors.lightBlue,
            title: "Ajustes",
            image: "assets/icons/settings.png",
          ),
          OptionButton(
            color: Colors.amber,
            title: "Ofertas",
            image: "assets/icons/promotions.png",
          ),
        ],
      ),
    );
  }

  Widget rowButtons3() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const OptionButton(
            color: Colors.deepPurpleAccent,
            title: "Caja",
            image: "assets/icons/cash_machine.png",
          ),
          OptionButton(
            color: Colors.blueGrey.shade600,
            title: "Vendedores",
            image: "assets/icons/vendor.png",
          ),
          OptionButton(
            color: Colors.lightGreenAccent.shade400,
            title: "Proveedores",
            image: "assets/icons/providers.png",
          ),
        ],
      ),
    );
  }
}
