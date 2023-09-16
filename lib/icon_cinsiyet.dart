import 'package:flutter/material.dart';
import './input_page.dart';

class IconCinsiyet extends StatelessWidget {
  final Icon icon;
  final String cinsiyet;
  IconCinsiyet({required this.icon, required this.cinsiyet});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        icon,
        SizedBox(height: 10,),
        Text(cinsiyet,style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),)
      ],
    );
  }
}
