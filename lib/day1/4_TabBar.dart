import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
<<<<<<< HEAD
              // backgroundColor: Colors.blue[100],
              title : Text("탭 바!"),
              bottom: TabBar(tabs: [
                Tab(icon : Icon(Icons.home), text : "홈"),
                Tab(icon : Icon(Icons.menu), text : "메뉴"),
                Tab(icon : Icon(Icons.settings), text : "세팅"),
              ]),
            ),
            body : TabBarView(children: [
              Center(child: Text("첫번째 메뉴!"),),
              Center(child: Text("두번째 메뉴!"),),
              Center(child: Text("세번째 메뉴!"),)
            ])
=======
              backgroundColor: Colors.blue[100],
              title: Text("탭 바!"),
              bottom: TabBar(tabs: [
                Tab(icon : Icon(Icons.home), text: "홈",),
                Tab(icon : Icon(Icons.menu), text: "메뉴",),
                Tab(icon : Icon(Icons.settings), text: "세팅",)

              ]),
            ),
            body: TabBarView(children: [
              Center(child: Text("첫 번째 메뉴!"),),
              Center(child: Text("두 번째 메뉴!"),),
              Center(child: Text("세 번째 메뉴!"),),
            ]),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
          )
      ),
    );
  }
}
