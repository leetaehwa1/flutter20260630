import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Offset p = Offset(100, 150);
  late List<Widget> list = [
    Positioned(
        top: p.dx, left: p.dy,
        child: Container(
          width: 150,
          height: 150,
          color: Colors.lightBlue,
        )
    ),
    Positioned(
        top: 40, left: 40,
        child: Container(
          width: 150,
          height: 150,
          color: Colors.green,
        )
    ),
    Positioned(
        top: 60, left: 60,
        child: Container(
          width: 150,
          height: 150,
          color: Colors.orange,
        )
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: list,
        ),
      ),
    );
  }
}
