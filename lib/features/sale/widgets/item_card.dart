import 'package:flutter/material.dart';
import '../presentation/model/transaction_view_model.dart';

class ItemCard extends StatelessWidget {
  final List<TransactionViewModel> transactions;
  final int index;
  const ItemCard({Key? key, required this.transactions, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      color: Colors.white70,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.35,
        child: Row(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(transactions[index].code),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(transactions[index].qtty.toString()),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(transactions[index].description),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("\$${transactions[index].price}"),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your onPressed code here!
                          },
                          backgroundColor: Colors.green,
                          child: const Icon(
                            Icons.arrow_drop_up,
                            size: 55,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      height: 25,
                      width: 25,
                      child: FittedBox(
                        child: FloatingActionButton(
                          onPressed: () {
                            // Add your onPressed code here!
                            transactions.removeAt(index);
                          },
                          backgroundColor: Colors.red,
                          child: const Icon(
                            Icons.arrow_drop_down,
                            size: 55,
                          ),
                        ),
                      ),
                    ),
                  ]),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
