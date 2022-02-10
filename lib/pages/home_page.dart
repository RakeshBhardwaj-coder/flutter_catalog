import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var name = "Rakesh charj";
  var day = 5;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Rakesh"),
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
      drawer: Drawer(),
    );
  }
}
