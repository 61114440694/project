import 'package:flutter/material.dart';

import 'course.dart';

class OpenningPage extends StatefulWidget {
  OpenningPage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _OpenningPageState createState() => _OpenningPageState();
}

class _OpenningPageState extends State<OpenningPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, bottom: 50),
            child: Text("Omakase Course",
                style: TextStyle(
                    color: Colors.white, fontSize: 40, fontFamily: "Prompt")),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Course(
                                  SET: "1",
                                  img: "Assets/Images/set1.jpg",
                                  price: 490,
                                  description: "คอร์ส 7 คำ และ เมนูพิเศษ 1 คำ ")),
                        );
                      },
                      child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black87.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "Assets/Images/set1.jpg",
                                ),
                              )))),
                ),
                Text("SET 1",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Prompt")),
                Text("490 ฿",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Prompt")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Course(
                                  SET: "2",
                                  img: "Assets/Images/set2.jpg",
                                  price: 990,
                                  description: "คอร์ส 8 คำ และ เมนูพิเศษ 2 คำ ")),
                        );
                      },
                      child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black87.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "Assets/Images/set2.jpg",
                                ),
                              )))),
                ),
                Text("SET 2",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Prompt")),
                Text("990 ฿",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Prompt")),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Course(
                                  SET: "3",
                                  img: "Assets/Images/set3.jpg",
                                  price: 1200,
                                  description: "คอร์ส 12 คำ และ เมนูพิเศษ 4 คำ ")),
                        );
                      },
                      child: Container(
                          width: 200.0,
                          height: 200.0,
                          decoration: new BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black87.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              image: new DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(
                                  "Assets/Images/set3.jpg",
                                ),
                              )))),
                ),
                Text("SET 3",
                    style:
                        TextStyle(color: Colors.white, fontFamily: "Prompt")),
                Text("1200 ฿",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontFamily: "Prompt")),
              ],
            ),
          ])
        ],
      )),
    );
  }
}
