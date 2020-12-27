import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fumakase/openning.dart';

class Course extends StatefulWidget {
  final String SET;
  final String img;
  final int price;
  final String description;
  Course(
      {Key key,
      @required this.SET,
      @required this.img,
      @required this.price,
      @required this.description})
      : super(key: key);
  @override
  _CourseState createState() => _CourseState(SET, img, price, description);
}

class _CourseState extends State<Course> {
  final String SET;
  final String img;
  final String description;
  final int price;
  _CourseState(this.SET, this.img, this.price, this.description);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black87,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 400, right: 400),
                  child: Card(
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: 200.0,
                                    height: 200.0,
                                    decoration: new BoxDecoration(
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.black87.withOpacity(0.5),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(0,
                                                3), // changes position of shadow
                                          ),
                                        ],
                                        image: new DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                            img,
                                          ),
                                        ))),
                                Padding(
                                    padding: EdgeInsets.all(30),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text("SET: ${SET}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22,
                                                  fontFamily: "Prompt")),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text("Menu : ${description} ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22,
                                                  fontFamily: "Prompt")),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(10),
                                          child: Text("Price: ${price}++ ",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 22,
                                                  fontFamily: "Prompt")),
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 30),
                                  child: RaisedButton(
                                    color: Theme.of(context).primaryColor,
                                    child: Text(
                                      'Buy',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: _simpleDialog,
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  )),

              // Button ( back to openning )
              Padding(padding: EdgeInsets.only(top: 20)),
              MaterialButton(
                  color: Theme.of(context).primaryColor,
                  child: Text(
                    'Back',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => OpenningPage()),
                    );
                  })
            ],
          ),
        ));
  }

  void _showSnackBar(String text, String ans) {
    final snackBar = SnackBar(
        duration: Duration(milliseconds: 500),
        backgroundColor: ans.compareTo("Yes") == 0 ? Colors.green : Colors.red,
        content: Row(
          children: <Widget>[
            Icon(
              ans.compareTo("Yes") == 0 ? Icons.favorite : Icons.watch_later,
              color: ans.compareTo("Yes") == 0 ? Colors.pink : Colors.yellow,
              size: 24.0,
              semanticLabel: text,
            ),
            Text(text)
          ],
        ));
    Scaffold.of(context).showSnackBar(snackBar);
  }

  Future<void> _simpleDialog() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('you need course??'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "Yes");
                },
                child: const Text('Yes'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, "No");
                },
                child: const Text('No'),
              ),
            ],
          );
        })) {
      case "Yes":
        _showSnackBar("complete", "Yes");
        break;
      case "No":
        _showSnackBar("Uncomplete", "No");
        break;
    }
  }
}
