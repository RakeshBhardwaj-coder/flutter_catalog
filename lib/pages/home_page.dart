import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String name = "Rakesh charj";
  final int day = 5;

  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Rakesh"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
                "Hello my   is $name ak. click and day is $day Plus button it will increase the number"),
          ],
        ),
      ),
      drawer: const Drawer(),
    );
  }
}
