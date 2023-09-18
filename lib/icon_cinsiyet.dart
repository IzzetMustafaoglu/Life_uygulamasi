import 'package:flutter/material.dart';
import 'package:life_expectancy_v1/constants.dart';
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
        Text(cinsiyet,style: kMetinStil)
      ],
    );
  }
}
