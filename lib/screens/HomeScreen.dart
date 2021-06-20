import 'package:flutter/material.dart';
import 'package:hello_world/models/Item.dart';

import 'package:hello_world/screens/DrawerScreen.dart';
import 'package:hello_world/widgets/ItemWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogMoodel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: DrawerScreen(),
    );
  }
}
