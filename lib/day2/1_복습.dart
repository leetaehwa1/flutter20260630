import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
<<<<<<< HEAD
        // scaffoldBackgroundColor: Colors.grey
=======
        scaffoldBackgroundColor: Colors.black12
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
<<<<<<< HEAD
            "타이틀!",
            style: TextStyle(
              fontWeight: FontWeight.w600,
=======
            "타이틀",
            style: TextStyle(
              fontWeight: FontWeight.bold,
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
              color: Colors.blue,
              letterSpacing: 2,
              decoration: TextDecoration.underline,
              decorationColor: Colors.red,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
<<<<<<< HEAD
            IconButton(onPressed: (){}, icon: Icon(Icons.home))
          ],
        ),
        drawer: Drawer(),
        body : Center(
=======
            IconButton(onPressed: (){}, icon: Icon(Icons.home)),
          ],
        ),
        drawer: Drawer(),
        body: Center(
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
          child: Row(
            children: [
              ElevatedButton(
                  onPressed: (){
<<<<<<< HEAD
                    print("버튼 클릭!");
                  },
                  child: Text("선택!"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    foregroundColor: Colors.pinkAccent,
                    shadowColor: Colors.black,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    side: BorderSide(
                      color: Color(0xFF1C1B1B),
                      width: 1
                    )
                  ),
              ),
              MyButton(text : Text("안녕?")),
              MyButton(text : Text("ㅋㅋ")),
              MyButton(text : Text("Hello")),
              MyButton(text : Text("Flutter"))
=======
                    print("버튼클릭");
                  },
                  child: Text("선택"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.red,
                    shadowColor: Colors.purpleAccent,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 2
                      )
                    )
                  ),
              ),
              MyButton(text : Text("안녕")),
              MyButton(text : Text("굿")),
              MyButton(text : Text("그만")),
              MyButton(text : Text("할래")),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(),
      ),
    );
  }
}
<<<<<<< HEAD

=======
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
class MyButton extends StatelessWidget {
  final Text text;
  const MyButton({super.key, required Text this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){
<<<<<<< HEAD
        print("버튼 클릭!");
      },
      child: text,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.lightBlueAccent,
          foregroundColor: Colors.pinkAccent,
          shadowColor: Colors.black,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
          ),
          side: BorderSide(
              color: Color(0xFF1C1B1B),
              width: 1
=======
        print("버튼클릭");
      },
      child: text,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.red,
          shadowColor: Colors.purpleAccent,
          elevation: 10,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: BorderSide(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2
              )
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
          )
      ),
    );
  }
}


