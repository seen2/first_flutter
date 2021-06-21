import 'package:flutter/material.dart';

import 'package:hello_world/models/item.dart';
import 'package:hello_world/widgets/CatalogItem.dart';

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
