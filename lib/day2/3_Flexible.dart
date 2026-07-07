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
        body : Row(
          children: [
            Flexible(flex: 1, child: Container(color: Colors.red,), ),
            Flexible(flex: 2, child: Column(
              children: [
                Flexible(flex: 2,child: Container(color: Colors.purple,),),
                Flexible(flex: 1,child: Container(color: Colors.yellow,),),
                Flexible(flex: 1,child: Container(color: Colors.grey,),),
              ],
            ),),
            Flexible(flex: 1, child: Container(color: Colors.green,))
=======
        body: Row(
          children: [
            Flexible(flex: 1, child: Container(color: Colors.red,), ),
            Flexible(flex: 2, child: Column(
                  children: [
                      Flexible(flex :2,child:Container(color: Colors.green,)),
                      Flexible(flex :2,child:Container(color: Colors.blue,)),
                      Flexible(flex :2,child:Container(color: Colors.purpleAccent,)),
                    ],
                ),
            ),
            Flexible(child: Container(color: Colors.green,),flex: 3,)
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
          ],
        )
      ),
    );
  }
}
