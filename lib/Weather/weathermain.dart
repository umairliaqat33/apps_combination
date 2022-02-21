import 'package:apps_combination/BMI_Calculator/BMImain.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../IconContent.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Calculator/Calculatormain.dart';
import '../Poor/Poormain.dart';
import '../Dice/Dicemain.dart';
import '../Quizler2/Quizlermain.dart';
import '../Xylophone/Pianomain.dart';
import '../Info_card/Cardmain.dart';
import '../Rich/Richmain.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InterfaceResponsive(),
    );
  }
}

class InterfaceResponsive extends StatefulWidget {
  const InterfaceResponsive({Key? key}) : super(key: key);

  @override
  _InterfaceResponsiveState createState() => _InterfaceResponsiveState();
}

class _InterfaceResponsiveState extends State<InterfaceResponsive> {
  @override
  int ind = 0;
  var tabs = [('Apps'), ('Inbox'), ('Home'), ('Recent')];
  Widget build(BuildContext context) {
    var wdt = MediaQuery.of(context).size.width;
    var het = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.yellow,
                    width: 4,
                  )),
                  width: 800,
                  height: het / 4,
                  child: Image.asset(
                    'images/weatherapp.png',
                    height: 150,
                    fit: BoxFit.fill,
                    width: 900,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, right: 30, top: 30),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconContent(
                          "I am Rich",
                          "My Introduction",
                          "Rich",
                          "Know me",
                          FontAwesomeIcons.solidMoneyBillAlt,
                          FontAwesomeIcons.userAlt,
                          het / 1.9,
                          wdt,
                          CardApp(),
                          RichApp(),
                        ),
                        IconContent(
                          "Play Ludo",
                          "I am Poor",
                          "Ludo",
                          "Poor App",
                          FontAwesomeIcons.dice,
                          FontAwesomeIcons.handHoldingUsd,
                          het / 1.9,
                          wdt,
                          PoorApp(),
                          Dice(),
                        ),
                        IconContent(
                          "Answer Questions",
                          "Do Math",
                          "Quizler",
                          "Calculator",
                          FontAwesomeIcons.questionCircle,
                          FontAwesomeIcons.calculator,
                          het / 1.9,
                          wdt,
                          Calculator(),
                          QuizlerApp(),
                        ),
                        IconContent(
                          "Play Piano",
                          "Find Your Body Mass",
                          "Piano",
                          "BMI Calculator",
                          FontAwesomeIcons.music,
                          FontAwesomeIcons.weight,
                          het / 1.9,
                          wdt,
                          BMICalculator(),
                          PianoApp(),
                        ),


                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.purple,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,

          currentIndex: ind,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.googlePlay),
              // backgroundColor: Colors.blue,
              label: 'Menu',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              // backgroundColor: Colors.blue,
              label: 'Inbox',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              // backgroundColor: Colors.blue,
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              label: 'Recent',
              // backgroundColor: Colors.blue,
            ),
          ],
          onTap: (index) {


            setState(() {
              ind = index;
            });
          },
        ),
      ),
    );
  }
}
