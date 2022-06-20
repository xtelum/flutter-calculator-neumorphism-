import 'package:calculator/neuButton.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Color bgColor=Colors.blueGrey.shade100;
Color primaryTextColor=Colors.grey.shade800;
Color secondaryTextColor=Colors.red;

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
        title: 'Calculator App',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: Container(
              color: bgColor,
              width: 500,
              height: 800,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.bottomRight,
                    child: const Text(
                      "0",
                      style: TextStyle(fontSize: 100),
                    ),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    squareButton("AC",secondaryTextColor),squareButton("+/-",secondaryTextColor),squareButton("%",secondaryTextColor),squareButton("÷",secondaryTextColor),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    squareButton("7",primaryTextColor),squareButton("8",primaryTextColor),squareButton("9",primaryTextColor),squareButton("×",secondaryTextColor),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    squareButton("4",primaryTextColor),squareButton("5",primaryTextColor),squareButton("6",primaryTextColor),squareButton("-",secondaryTextColor),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    squareButton("1",primaryTextColor),squareButton("2",primaryTextColor),squareButton("3",primaryTextColor),squareButton("+",secondaryTextColor),
                  ],),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    button("0",primaryTextColor),squareButton(",",primaryTextColor),squareButton("=",secondaryTextColor),
                  ],),
                ],
              )),
        ));
  }
}
Widget squareButton(String value,Color textColor)
{
  return NeuButton(
    width: 100,
    height: 100,
    bgColor:bgColor,
    position: Alignment.center,
    child: Text(value,style: TextStyle(color: textColor,fontSize: 35,fontWeight: FontWeight.bold),),
  );
}
Widget button(String value,Color textColor)
{
  return NeuButton(
    width: 200,
    height: 100,
    bgColor:bgColor,
    padding:const EdgeInsets.only(left: 20),
    position: Alignment.centerLeft,
    child: Text(value,style: TextStyle(color: textColor,fontSize: 35,fontWeight: FontWeight.bold),),
  );
}