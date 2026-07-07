import 'package:flutter/material.dart';

<<<<<<< HEAD
void main(){
=======
void main() {
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // double x = 150;
  // double y = 150;
  Offset position = Offset(150, 150);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
<<<<<<< HEAD
        body : Stack(
          children: [
            Positioned(
                // top: y, left: x,
                left : position.dx, top : position.dy,
                child: GestureDetector(
                    onTap: (){
                      print(MediaQuery.of(context).size.width);
                      print(MediaQuery.of(context).size.height);
                    },
                    onPanUpdate: (e){
                      setState(() {
                        // x += e.delta.dx;
                        // y += e.delta.dy;
                        // poistion => (150, 150)
                        // delta => (2, 3)
                        // position + delta => (152, 153)
                        position += e.delta;
                      });
                    },
                    child: Container(width: 100, height: 100, color: Colors.green,)
                )
            )
          ],
        )
=======
        body: Stack(
          children: [
            Positioned(
                // top: y, left: x,
                left: position.dx, top: position.dy,
                child: GestureDetector(
                  onTap: (){
                    print(MediaQuery.of(context).size.width);
                    print(MediaQuery.of(context).size.height);
                  },
                  onPanUpdate: (e) {
                    return setState(() {
                      // x += e.delta.dx;
                      // y += e.delta.dy;
                      // position =>(150, 150)
                      // delta => (2, 3)
                      // position + delta => (152, 153)
                      position += e.delta;
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.black,
                  ),
                )
            )
          ],
        ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
