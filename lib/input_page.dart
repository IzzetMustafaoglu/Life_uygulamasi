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
      body: Container(
        width: 150,
        height: 150,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,),
      )
    );
  }
}
