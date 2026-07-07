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
<<<<<<< HEAD
  bool javaChecked = false;
  bool mySqlChecked = false;
=======
  bool? javaChecked = false;
  bool mySqlCheked = false;
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
<<<<<<< HEAD
          body : ListView(
            children: [
              CheckboxListTile(
                  value: javaChecked,
                  controlAffinity : ListTileControlAffinity.leading,
                  title: Text("자바"),
                  subtitle: Text("자바 재밌는 사람 ?"),
                  onChanged: (value){
                    setState(() {
                      javaChecked = value!;
                    });
                  }
              )
            ],
          )
=======
        body: Column(
          children: [
            Row(
              children: [
                Checkbox(
                    value: javaChecked,
                    onChanged: (value) {
                      setState(() {
                        javaChecked = value!;
                      });
                      // print(value);
                    },
                ),
                Text("자바"),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  value: mySqlCheked,
                  onChanged: (value) {
                    setState(() {
                      mySqlCheked = value!;
                    });
                  },
                ),
                Text("MySql"),
              ],
            )
          ],
        ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
<<<<<<< HEAD

=======
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
