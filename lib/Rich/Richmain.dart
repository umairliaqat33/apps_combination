import 'package:flutter/material.dart';

void main() {
  runApp(RichApp());
}

class RichApp extends StatelessWidget {
  const RichApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Center(child: Text("I Am Rich")),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
            child: Image(
              image:AssetImage("images/diamond.png"),
            )),
      ),
    );
  }
}
