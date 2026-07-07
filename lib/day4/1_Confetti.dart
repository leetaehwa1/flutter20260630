<<<<<<< HEAD
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

void main(){
=======
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

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
  late ConfettiController _controllerCenter;
<<<<<<< HEAD

  @override
  void initState() {
    // TODO: implement initState
=======
  @override
  void initState() {
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
    super.initState();
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
  }
<<<<<<< HEAD

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body : Center(
=======
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    _controllerCenter.play();
                  },
<<<<<<< HEAD
                  child: Text("클릭!")
=======
                  child: Text("클릭!"),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
              ),
              ConfettiWidget(
                confettiController: _controllerCenter,
                blastDirectionality: BlastDirectionality
                    .explosive, // don't specify a direction, blast randomly
<<<<<<< HEAD
                shouldLoop: false, // start again as soon as the animation is finished
=======
                shouldLoop:
                false, // start again as soon as the animation is finished
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.orange,
                  Colors.purple
                ], // manually specify the colors to be used
<<<<<<< HEAD
                numberOfParticles: 300,

              )


            ],
          ),
        )
=======
                numberOfParticles: 30,

                // define a custom shape/path.
              ),
            ],
          ),
        ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
