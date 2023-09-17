import 'package:flutter/material.dart';
import './icon_cinsiyet.dart';
import './my_container.dart';

class InputPage extends StatefulWidget {

  @override
  State<InputPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<InputPage> {
  int _counter = 0;
  late bool seciliCinsiyet;
  double icilenSigara=3;
  double sporGunu = 2;

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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
              Expanded(
                child: MyContainer(
                  onPress: (){
                    setState(() {
                      print("....");
                    });
                  },
                  child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.vaccines,
                    )
                  ],
                ),),
              ),
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        print("......");
                      });
                    },
                    child: Column(
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
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Haftada kaç gün spor yapıyorsunuz?",
                    style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    sporGunu.round().toString(),
                    style: TextStyle(color: Colors.lightBlue,fontSize: 35,fontWeight: FontWeight.bold),),
                  Slider(
                      min: 0,
                      max: 7,
                      divisions: 7,
                      value: sporGunu,
                      onChanged: (double newValue){
                        setState(() {
                          sporGunu = newValue;
                        });
                      }
                  ),
                ],
              ),
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,),
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Günde Kaç Sigara İçiyorsunuz?",
                    style: TextStyle(color: Colors.black54,fontSize: 20,fontWeight: FontWeight.bold),
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: TextStyle(color: Colors.lightBlue,fontSize: 35,fontWeight: FontWeight.bold),),
                  Slider(
                      min: 0,
                      max: 30,
                      value: icilenSigara,
                      onChanged: (double newValue){
                        setState(() {
                          icilenSigara = newValue;
                        });
                      }
                  ),
                ],
              ),
              margin: EdgeInsets.all(12.0),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),color: Colors.white,),
            ),
          ),
          Expanded(
            child: Row(
                children: <Widget>[
                  Expanded(
                    child: MyContainer(
                      onPress: (){
                        setState(() {
                          print("Erkek");
                        });
                      },
                      child: IconCinsiyet(
                      icon: Icon(Icons.man,size: 50, color: Colors.black54),
                      cinsiyet: "Erkek",
                    ),),
                   ),
                  Expanded(
                      child: MyContainer(
                        onPress: (){
                          setState(() {
                            print("kadın");
                          });
                        },
                        child: IconCinsiyet(
                          icon: Icon(Icons.woman,size: 50, color: Colors.black54,),
                          cinsiyet: "Kadın"),
                      )
                  ),
                      ],
                    ),
                    ),
                ]
            ),
          );

    }
}

