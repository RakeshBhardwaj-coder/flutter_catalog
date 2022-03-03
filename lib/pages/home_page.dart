import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widgets.dart';

import '../models/catalog.dart';

class HomePage extends StatelessWidget {
  final String name = "Rakesh charj";
  final int day = 5;

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final demoList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Rakesh"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: demoList.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: demoList[index],
            );
          },
        ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
