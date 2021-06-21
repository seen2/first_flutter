import 'package:flutter/material.dart';
import 'package:hello_world/utils/themes.dart';

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