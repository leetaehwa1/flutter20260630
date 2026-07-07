import 'package:flutter/material.dart';

<<<<<<< HEAD
=======


>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: Colors.grey[200],
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[100],
          title : Text("테스트!"),
        ),
        drawer: Drawer(),
        body : Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("가운데", style : TextStyle(fontSize: 50, fontWeight: FontWeight.bold)),
              SizedBox(height: 10,),
              IconButton(onPressed: (){}, icon: Icon(Icons.star, color: Colors.yellow, size: 200,)),
              SizedBox(height: 10,),
              Container(
                height: 100, width: 100,
                color: Colors.black,
                child: Center(child: Text("네모 박스!", style: TextStyle(color: Colors.white))),
              )
            ],
          ),
        )
      ),
=======
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.grey,
        ),
        home: Scaffold(
            appBar: AppBar(
              title : Text("상단영역!"),
              backgroundColor: Colors.blue[200],
            ),
            drawer: Drawer(),
            body:Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "가운데",
                      style:TextStyle(
                          color : Colors.black,
                          fontWeight : FontWeight.bold,
                          fontSize: 50
                      )
                  ),
                  SizedBox(height: 10,),
                  Icon(Icons.star, size : 200, color: Colors.yellow,),
                  SizedBox(height: 10,),
                  Container(
                    height: 100, width: 100,
                    color: Colors.black,
                    child: Center(child: Text("네모박스", style: TextStyle(color: Colors.white),)),
                  )




                ],

              ),
            )
        )
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
    );
  }
}
