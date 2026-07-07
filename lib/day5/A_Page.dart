import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'B_Page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
=======
import 'package:flutter20260629/day5/B_Page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
  Widget build(BuildContext context) {
    return MaterialApp(
      home: APage(),
    );
  }
}

class APage extends StatefulWidget {
  const APage({super.key});

  @override
  State<APage> createState() => _APageState();
}

class _APageState extends State<APage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text("A 페이지!"),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BPage(),
                      )
                  );

                }, child: Text("그냥 이동")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BPage(msg : "A페이지에서 보냈습니다."),
                      )
                  );
                }, child: Text("값 보내기")
            )
          ],
        ),
      ),
    );
  }
}
=======
        title: Text("A 페이지"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BPage(msg: "A페이지에서 보냈습니다."),
                ),
              );
            },
            child: Text("값 보내기"),
          ),
          SizedBox(width: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BPage()),
              );
            },
            child: Text("그냥 이동"),
          ),
        ],
      ),
    );
  }
}
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
