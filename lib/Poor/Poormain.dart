import 'package:flutter/material.dart';

void main() {
  runApp(PoorApp());
}

class PoorApp extends StatelessWidget {
  const PoorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("I_Am_Poor"),
        ),
        body: Center(child: Image(image: AssetImage('images/poor.png'),)),
      ),

    );
  }
}
