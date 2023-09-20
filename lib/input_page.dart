import 'package:flutter/material.dart';
import 'package:life_expectancy_v1/constants.dart';
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
  int boy = 170;
  int kilo = 65;

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
                        print("......");
                      });
                    },
                    child:  buildRowOutlineButton("BOY"),
                  ),
                ),
                Expanded(
                  child: MyContainer(
                    onPress: (){
                      setState(() {
                        print("......");
                      });
                    },
                    child: buildRowOutlineButton("KİLO"),
                  ),
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
                    style: kMetinStil
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
                    style: kMetinStil
                  ),
                  Text(
                    icilenSigara.round().toString(),
                    style: sayiStil
                  ),
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

  Row buildRowOutlineButton(String label) {
    return Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RotatedBox(
                          quarterTurns:-1,
                          child: Text(label)
                      ),

                      RotatedBox(
                          quarterTurns:-1,
                          child: Text(
                            label=="BOY" ? boy.toString() : kilo.toString(),
                            style: sayiStil,
                          )
                      ),
                      SizedBox(width: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                                onPressed: (){

                                  setState(() {
                                    label=="BOY" ? boy++ : kilo++;
                                  });

                                  print("üstteki buton basıldı");
                                },
                                child: Icon(Icons.plus_one,size: 30,color: Colors.green),
                            ),
                          ),
                          SizedBox(width: 10,),
                          ButtonTheme(
                            minWidth: 36,
                            child: OutlinedButton(
                                onPressed: (){

                                  setState(() {
                                    label=="BOY" ? boy-- : kilo--;
                                  });

                                  print("Alttaki buton basıldı");
                                },
                                child: Icon(Icons.exposure_minus_1_sharp,size: 25,color: Colors.red,),
                            ),
                          ),
                        ],
                      )
                    ],
                  );
  }
}
