import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:hello_world/models/item.dart';

import 'package:hello_world/screens/DrawerScreen.dart';
import 'package:hello_world/widgets/ItemWidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJSON =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJSON);
    final productData = decodedData["products"];
    List<Item> itemList =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    CatalogMoodel.items = itemList;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogMoodel.items[0]);

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: (CatalogMoodel.items?.isEmpty ?? true)
          ? Center(
              child: CircularProgressIndicator(),
            )
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 16, mainAxisSpacing: 16),
              itemCount: CatalogMoodel.items?.length ?? 0,
              itemBuilder: (context, index) {
                return Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: GridTile(
                    header: Container(
                      child: Text(
                        CatalogMoodel.items?[index].name ?? '',
                        style: TextStyle(color: Colors.white),
                      ),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(color: Colors.deepPurple),
                    ),
                    child:
                        Image.network(CatalogMoodel.items?[index].image ?? ''),
                    footer: Text(
                        "\$${CatalogMoodel.items?[index].price.toString() ?? ''}"),
                  ),
                );
              },
            ),
      drawer: DrawerScreen(),
    );
  }
}
