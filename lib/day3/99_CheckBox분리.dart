import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

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

  Widget MyCheckBox(String title, {required String imgUrl}) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: Text(title),
      value: checkList.contains(imgUrl),
      onChanged: (value) {
        listChange(imgUrl, value!);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body : Column(
            children: [
              Column(
                children: [
<<<<<<< HEAD
                  MyCheckBox("망곰1", imgUrl: imgList[0]),
                  MyCheckBox("망곰2", imgUrl: imgList[1]),
                  MyCheckBox("망곰3", imgUrl: imgList[2]),

                ],

=======
                  MyCheckBox("머쓱", imgUrl: imgList[0]),
                  MyCheckBox("추욱", imgUrl: imgList[1]),
                  MyCheckBox("으흐흑", imgUrl: imgList[2]),
                ],
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
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
      ),
    );
  }
}
<<<<<<< HEAD

=======
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
