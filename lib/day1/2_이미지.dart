import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
<<<<<<< HEAD
        appBar: AppBar(title : Text("상단영역!")),
        body: Center(
          child: Column(
            children: [
              Image.asset("img2.png", width: 200, height: 200,),
              Container(height: 50,), // box1
              SizedBox(height: 50,), // box2
              CircleAvatar(
                radius: 100,
=======
        appBar: AppBar(title: Text("상단 영역"),),
        body: Center(
          child: Column(
            children: [
              Image.asset("img2.png", width: 500, height: 500, scale: 0.5,),
              Container(height: 50,), // box1
              SizedBox(height: 50,), // box2
              CircleAvatar(
                radius: 50,
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
                backgroundImage: AssetImage("img3.png"),
              )
            ],
          ),
<<<<<<< HEAD
        )
=======
        ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
