import 'package:flutter/material.dart';

class BPage extends StatelessWidget {
  final String? msg;
  const BPage({super.key, this.msg});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: Text("B 페이지!"),
        // automaticallyImplyLeading: false,
      ),

      body: Center(
        child: Text(msg ?? "B페이지! 전달 받은 값 없음!"),
=======
        title: Text("B페이지"),
      ),
      body: Center(
        child: Text(msg ?? "B페이지 ! 전달 받은 값 없음"),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
<<<<<<< HEAD
=======

>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
