import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
<<<<<<< HEAD
      home : Scaffold(
        body : ListView(
          children: [
            ListTile(
              leading: Image.asset("img2.png", width: 70, height: 70,),
              title : Text("귀여운 망곰~", style : TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("정말 정말 귀여워요~"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              onTap: (){
                print("클릭 됨!");
              },
            ),
            Divider(height: 3, color : Colors.black45),
            ListTile(
              leading: Image.asset("img1.png", width: 70, height: 70),
              title : Text("귀여운 망곰~", style : TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("정말 정말 귀여워요~"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              onTap: (){
                print("클릭 됨!");
              },
            ),
            Divider(height: 3, color : Colors.black45),
            ListTile(
              leading: Image.asset("img3.png", width: 70, height: 70),
              title : Text("귀여운 망곰~", style : TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text("정말 정말 귀여워요~"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              onTap: (){
                print("클릭 됨!");
              },
            ),
            Divider(height: 3, color : Colors.black45),
          ],
        )
      )

=======
      home: Scaffold(
        body: ListView(
          children: [
            ListTile(
              leading: Image.asset("img2.png", width: 150, height: 150,),
              title: Text("털썩..."),
              subtitle: Text("믿을 수 없어"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              onTap: (){
                print("클릭 됨");
              },
            ),
            Divider(height: 3, color: Colors.black45,),
            ListTile(
              leading: Image.asset("img1.png", width: 150, height: 150,),
              title: Text("..."),
              subtitle: Text("머쓱"),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.edit)),
              onTap: (){
                print("클릭 됨");
              },

            ),
            ListTile(),
          ],
        ),
      ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
    );
  }
}
