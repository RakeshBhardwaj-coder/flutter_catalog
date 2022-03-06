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
// delay function for 2 sec to avoid error
    await Future.delayed(Duration(seconds: 2));

    var catalogJson = await rootBundle.loadString("files/catalog.json");
    // print(catalogJson);
    var decodeJson = jsonDecode(catalogJson);
    // print(decodeJson);
    var productData = decodeJson["products"];
    // print(productData);

    CatalogModel.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final demoList = List.generate(50, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Rakesh"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)?
            GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items?[index];
                  return GridTile(
                    child: Image.network(item!.image),
                  );
                },
                itemCount: CatalogModel.items?.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: const MyDrawer(),
    );
  }
}
