// Imports
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
  // instail values
  var num1 = 0, num2 = 0, sum = 0;
// take the values from the user
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
// add function
  void doAddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

// minus function
  void doSub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

// multiplies function
  void doMul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

// divide function
  void doDiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

// clear the two editing text
  void doClear() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Calculator"),
        ),
        // scroll view
        body: SingleChildScrollView(
            child: Column(children: [
          new Container(
            padding: const EdgeInsets.all(40.0),
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text(
                  "Output : $sum",
                  style: new TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "Enter Number 1"),
                  controller: t1,
                ),
                new TextField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(hintText: "Enter Number 2"),
                  controller: t2,
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("+"),
                      color: Colors.greenAccent,
                      onPressed: doAddition,
                    ),
                    new MaterialButton(
                      child: new Text("-"),
                      color: Colors.greenAccent,
                      onPressed: doSub,
                    ),
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("*"),
                      color: Colors.greenAccent,
                      onPressed: doMul,
                    ),
                    new MaterialButton(
                      child: new Text("/"),
                      color: Colors.greenAccent,
                      onPressed: doDiv,
                    ),
                  ],
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new MaterialButton(
                      child: new Text("Clear"),
                      color: Colors.greenAccent,
                      onPressed: doClear,
                    ),
                  ],
                )
              ],
            ),
          ),
        ])));
  }
}
