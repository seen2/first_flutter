import 'package:flutter/material.dart';
import 'package:hello_world/screens/ItemDetailsScreen.dart';
import 'package:hello_world/utils/themes.dart';

class CatalogItem extends StatelessWidget {
  final catalog;

  const CatalogItem({Key? key, @required this.catalog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return ItemDetailsScreen(
              product: catalog,
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 150,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(
                    catalog.image,
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        catalog.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Themes.darkBluishColor),
                      ),
                      Text(
                        catalog.desc,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        buttonPadding: EdgeInsets.zero,
                        children: [
                          Text(
                            ("\$" + catalog.price.toString()),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Themes.darkBluishColor),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("Buy"),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Themes.darkBluishColor),
                                shape:
                                    MaterialStateProperty.all(StadiumBorder())),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
