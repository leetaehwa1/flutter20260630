import 'package:flutter/material.dart';

<<<<<<< HEAD
void main(){
=======
void main() {
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Row(
          children: [
<<<<<<< HEAD
            Expanded(child: Container(color : Colors.grey)),
            Container(width: 150, color: Colors.blue,),

          ],
        ),
=======
            Container(
              width: 150, color: Colors.blue,
            ),
            Expanded(
                child: Container(
                  color: Colors.green,
                ))
          ],
        )
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
