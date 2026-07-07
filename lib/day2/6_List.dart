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
    List<String> list = ["김치찌개", "짜장면", "라면", "감자탕"];
<<<<<<< HEAD
    List<Icon> iconList = [
      Icon(Icons.food_bank),
      Icon(Icons.home),
      Icon(Icons.star),
      Icon(Icons.settings)
    ];
    return MaterialApp(
      home : Scaffold(
=======
    List<Icon> iconList=[
      Icon(Icons.food_bank),
      Icon(Icons.home),
      Icon(Icons.star),
      Icon(Icons.search),
    ];
    return MaterialApp(
      home: Scaffold(
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
        body: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: iconList[index],
                title: Text(list[index]),
<<<<<<< HEAD
                onTap: (){},
              );
            },
        ),
      ) 
        
=======
                onTap: (){
                },
              );
            },),
      ),
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
    );
  }
}
