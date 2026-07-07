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
  TextEditingController idCtrl = TextEditingController();
<<<<<<< HEAD
  // var idCtrl = TextEditingController();

=======
  // var idCtrl2 = TextEditingController();
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      home: Scaffold(
        body : Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
=======
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(100.0),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: idCtrl,
<<<<<<< HEAD
                  // obscureText: true,
=======
                  obscureText: false,
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
                  decoration: InputDecoration(
                    labelText: "아이디",
                    hintText: "ex) test1234",
                    prefixIcon: Icon(Icons.perm_identity),
                    suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
<<<<<<< HEAD
                    border : OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.yellow[100],
                    // enabled: false

=======
                    border: OutlineInputBorder(),
                    filled: true,
                    fillColor: Colors.amberAccent,
                    // enabled: false,
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                    onPressed: (){
<<<<<<< HEAD
                      print("입력된 아이디 : ${idCtrl.text}");
                    },
                    child: Text("로그인")
                )
                
                
              ],
            ),
          ),
        )
=======
                      print("입력 된 아이디 : ${idCtrl.text}");
                    },
                    child: Text("로그인")
                ),
              ],
            ),
          ),
        ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
