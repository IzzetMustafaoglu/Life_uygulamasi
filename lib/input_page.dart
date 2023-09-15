import 'package:flutter/material.dart';
import './input_page.dart';

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InputPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Yaşam Beklentisi",
          style: TextStyle(color: Colors.black54),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
              Expanded(
                child: MyContainer(renk: Colors.black26),
              ),
                Expanded(
                  child: MyContainer(renk: Colors.purple)
                ),
              ]
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,),
            ),
          ),
          Expanded(
            child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyContainer()
                  ),
                  Expanded(
                    child: MyContainer()
                  ),
                ]
            ),
          ),
        ],
      )
    );
  }
}

class MyContainer extends StatelessWidget {
  Color renk = Colors.white;
  MyContainer({this.renk = Colors.white}){
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: renk,),
    );
  }
}
