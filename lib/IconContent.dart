import 'package:flutter/material.dart';
// import 'main.dart';

class IconContent extends StatelessWidget {
  IconContent(this.tex2, this.tex1, this.mess2, this.mess1, this.ic2, this.ic1,this.h,this.w,this.page1,this.page2);
  final IconData ic1;
  final IconData ic2;
  var page1;
  var page2;
  String mess1;
  String mess2;
  String tex1;
  String tex2;
  final double h;
  final double w;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children: [
        Container(
          margin: EdgeInsets.only(top: 10,bottom: 10),
          height: h/3.3,
          width: w/2.5,
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page1));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            child: Column(
              children: [
                Icon(
                  ic1,
                  color: Colors.black,
                  size: 50,
                ),
                Text(
                  mess1,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  tex1,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10,bottom: 10),
          height: h/3.3,
          width: w/2.5,
          child: TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>page2));
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
            ),
            child: Column(
              children: [
                Icon(
                  ic2,
                  color: Colors.black,
                  size: 50,
                ),
                Text(
                  mess2,
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                Text(
                  tex2,
                  style: TextStyle(color: Colors.white, fontSize: 10),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}