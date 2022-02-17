import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main(){
  runApp(Piano());
}

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PianoApp(),
    );
  }
}



class PianoApp extends StatefulWidget {
  @override
  State<PianoApp> createState() => _PianoAppState();
}

class _PianoAppState extends State<PianoApp> {
void playsound(var sound )
{
  final player=AudioCache();
  player.play("note$sound.wav");
}

void call({required Color color,required int num }){
      Expanded(
        child: TextButton(onPressed: (){
          playsound(1);
        }, child: Text(''),
      ),
      );
}

  @override
  Widget build(BuildContext context) {
  var wid=MediaQuery.of(context).size.width;
  var hgt=MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
        child:Column(
          children: [
            Row(
              children: [
                Container(
                  color: Colors.red,
                  width: wid,
                  height: hgt/7.29,
                  child: TextButton(onPressed: (){
                    playsound(1);
                  },
                    child: Text(""),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.deepOrangeAccent,
                  width: wid,
                  height: hgt/7.29,
                  child: TextButton(onPressed: (){
                    playsound(2);
                  },
                    child: Text(""),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.orange,
                  width: wid,
                  height: hgt/7.29,
                  child: TextButton(onPressed: (){
                    playsound(3);
                  },
                    child: Text(""),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.orangeAccent,
                  width: wid,
                  height: hgt/7.29,
                  child: TextButton(onPressed: (){
                    playsound(4);
                  },
                    child: Text(""),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.yellowAccent,
                  width: wid,
                  height: hgt/7.29,
                  child: TextButton(onPressed: (){
                    playsound(5);
                  },
                    child: Text(""),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.yellow,
                  width: wid,
                  height: hgt/7.29,
                  child: TextButton(onPressed: (){
                    playsound(6);
                  },
                    child: Text(""),),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.amber,
                  width: wid,
                  height: hgt/7.29,
                  child: TextButton(onPressed: (){
                    playsound(7);
                  },
                    child: Text(""),),
                ),
              ],
            ),

          ],
        ),
        ),
      ),
    );
  }
}
