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

  List<String> checkList = [];
  List<String> imgList = [
    "img1.png", "img2.png", "img3.png"
  ];

  void listChange(String item, bool flg){
    setState(() {
      if(flg){
        checkList.add(item);
      } else {
        checkList.remove(item);
      }
    });
  }

=======
  bool? javaChecked = false;
  bool mySqlCheked = false;
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
<<<<<<< HEAD
          body : Column(
            children: [
              Column(
                children: [
                  CheckboxListTile(
                      value: checkList.contains(imgList[0]),
                      controlAffinity : ListTileControlAffinity.leading,
                      title: Text("망곰1"),
                      onChanged: (value){
                        listChange(imgList[0], value!);
                      }
                  ),
                  CheckboxListTile(
                      value: checkList.contains(imgList[1]),
                      controlAffinity : ListTileControlAffinity.leading,
                      title: Text("망곰2"),
                      onChanged: (value){
                        listChange(imgList[1], value!);
                      }
                  ),
                  CheckboxListTile(
                      value: checkList.contains(imgList[2]),
                      controlAffinity : ListTileControlAffinity.leading,
                      title: Text("망곰3"),
                      onChanged: (value){
                        listChange(imgList[2], value!);
                      }
                  )
                ],

              ),
              Expanded(
                  child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10
                      ),
                      itemCount: checkList.length,
                      itemBuilder: (context, index){
                        return Image.asset(checkList[index]);
                      }
                  )
              )
            ],
          )
=======
        body: ListView(
          children: [
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: javaChecked,
              title: Text("자바"),
              subtitle: Text("자바 재밌는 사람 ?"),
              onChanged: (value)  {
                setState(() {
                  javaChecked = value!;
                });
            },)
          ],
        )
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      ),
    );
  }
}
<<<<<<< HEAD

=======
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
