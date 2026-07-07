import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Random ran = Random();
  int ranNum = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("랜덤 한 숫자 : ${ranNum+1}"),
              SizedBox(height: 10,),
              ElevatedButton(
                  onPressed: (){
                    setState(() {
                      ranNum = ran.nextInt(100)+1;
                    });
                  },
                  child: Text("클릭"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
