import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  Color renk = Colors.white;
  Widget child = Icon(Icons.add);
  final Function onPress;

  MyContainer({this.renk = Colors.white, required this.child, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: child,
        margin: EdgeInsets.all(12.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: renk,),
      ),
    );
  }
}