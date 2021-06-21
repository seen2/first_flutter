import 'package:flutter/material.dart';
import 'package:hello_world/models/item.dart';
import 'package:hello_world/utils/themes.dart';

class ItemDetailsScreen extends StatelessWidget {
  final Item? product;

  const ItemDetailsScreen({Key? key, @required this.product})
      : assert(product != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Column(
        children: [
          SafeArea(
              child: Hero(
                  tag: Key(product?.id.toString() ?? ''),
                  child: Center(child: Image.network(product?.image ?? '')))),
          Expanded(
              child: Container(
            child: Column(
              children: [
                Text(
                  product?.name ?? '',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Themes.darkBluishColor),
                ),
                Text(
                  product?.desc ?? '',
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  ("\$" + (product?.price).toString()),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Themes.darkBluishColor),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Buy",
                    style: TextStyle(fontSize: 25),
                  ),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Themes.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
