import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:hello_world/models/item.dart';

import 'package:hello_world/screens/DrawerScreen.dart';
import 'package:hello_world/utils/themes.dart';
import 'package:hello_world/widgets/CatalogItem.dart';

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
        title: Text(
          "Catalog App",
          style: TextStyle(color: Themes.darkBluishColor),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CatalogHeader(),
          if (CatalogMoodel.items?.isNotEmpty ?? false)
            Expanded(child: CatalogList())
          else
            Center(
              child: CircularProgressIndicator(),
            ),
        ],
      ),
      drawer: DrawerScreen(),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "Trending Products",
      style: TextStyle(color: Themes.darkBluishColor, fontSize: 22),
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogMoodel.items?.length,
      itemBuilder: (context, index) {
        final catalog = CatalogMoodel.items?[index];
        return CatalogItem(
          catalog: catalog,
        );
      },
    );
  }
}
