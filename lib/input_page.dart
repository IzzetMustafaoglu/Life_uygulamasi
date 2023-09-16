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
                child: MyContainer(child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.vaccines,
                    )
                  ],
                ),),
              ),
                Expanded(
                  child: MyContainer(child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.vaccines,
                      )
                    ],
                  ),)
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
                    child: MyContainer(child: IconCinsiyet(
                      icon: Icon(Icons.man,size: 50, color: Colors.black54),
                      cinsiyet: "Erkek",
                    ),),
                   ),
                  Expanded(
                      child: MyContainer(child: IconCinsiyet(
                          icon: Icon(Icons.woman,size: 50, color: Colors.black54,),
                          cinsiyet: "Kadın"),)
                  ),
                      ],
                    ),
                    ),
                ]
            ),
          );

    }
}

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

class MyContainer extends StatelessWidget {
  Color renk = Colors.white;
  Widget child = Icon(Icons.add);

  MyContainer({this.renk = Colors.white, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(12.0),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: renk,),
    );
  }
}
