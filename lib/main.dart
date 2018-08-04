import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    home: new Motosecurity(),
  ));
}

class Motosecurity extends StatefulWidget {
  @override
  ButtonThatWorks createState() => new ButtonThatWorks();
}


class ButtonThatWorks extends State<Motosecurity> {

  int number = 100;

  void subtractNumbers() {
    setState(() {
      number = number - 1;
    });
  }

  void addNumbers() {
    setState(() {
      number = number + 1;
    });
  }
//  Future<Null> _dosomething() async {
//
//  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar:
            new AppBar(title: new Text("Header"), backgroundColor: Colors.red),
        body: new Container(
            child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Text("$number!"),
                    new RaisedButton(
                        child: new Text("Press me!"),
                        color: Colors.red ,
                        onPressed: subtractNumbers
                    ),

                  ],
        ))));
  }



}
