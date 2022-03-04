import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widgets.dart';

import '../models/catalog.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String name = "Rakesh charj";

  final int day = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

//get the json file in code
  loadData() async {
    var catalogJson = await rootBundle.loadString("files/catalog.json");
    // print(catalogJson);
    var decodeJson = jsonDecode(catalogJson);
    // print(decodeJson);
  }

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
