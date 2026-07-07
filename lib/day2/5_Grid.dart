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
<<<<<<< HEAD
        body : GridView.builder(
=======
        body: GridView.builder(
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Container(
<<<<<<< HEAD
                color: Colors.blue[100 * ((index % 9) + 1)],
                child: Center(
                    child: Text(
                      "${index+1}",
                      style: TextStyle(color: Colors.white),
=======
                color: Colors.blue[100 * ((index % 9) + 1)], // 나머지 연산으로 0
                child: Center(
                    child: Text(
                        "${index+1}",
                        style: TextStyle(color: Colors.white),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
                    )
                ),
              );
            },
<<<<<<< HEAD
        )

=======
        ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
