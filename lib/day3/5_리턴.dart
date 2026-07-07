import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Text MyText(String txt){
    return Text(txt);
  }
  Widget MyWidget(){
    return Container(
      height: 50,
      width: 50,
      color: Colors.yellow,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            MyText("으하하"),
            MyText("크하하"),
            MyText("제하하"),
            MyWidget(),
          ],
        ),
      ),
    );
  }
}
