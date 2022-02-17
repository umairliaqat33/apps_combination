import 'package:flutter/material.dart';

void main() {
  runApp(CardApp());
}

class CardApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.green,
        appBar: AppBar(title: Center(child: Text("Info Card Of Umair"),

        ),
        backgroundColor: Colors.lightGreen,),
        body: Center(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage('images/umair.jpg'),
                ),
                Text("Umair Liaqat",style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                Text("Flutter Developer",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),),
                SizedBox(
                  height: 20,
                  width: 200,
                  child: Divider(
                    color: Colors.white,
                    thickness: 4,
                  ),
                ),
                Card(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: ListTile(
                    leading: Icon(Icons.phone,color: Colors.green,),
                  title: Text("+92 3134146206",style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),),
                  ),

                ),

                Card(
                  margin: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
                  child: ListTile(
                    leading: Icon(Icons.email,color: Colors.green,),
                    title: Text("Umairliaqat552@gmail.com",style: TextStyle(
                      fontSize: 19,
                      color: Colors.green,
                    ),),
                  ),

                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
