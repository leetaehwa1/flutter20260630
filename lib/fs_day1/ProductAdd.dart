import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../firebase_options.dart';

void main() async {
  // Flutter 프레임워크와의 초기화
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform, // Firebase 초기화 설정
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController prodCtrl = TextEditingController();
  TextEditingController cateCtrl = TextEditingController();
  TextEditingController priceCtrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  final FirebaseFirestore fs = FirebaseFirestore.instance;

  Future<void> addProduct () async{
    if(
      prodCtrl.text.isNotEmpty && cateCtrl.text.isNotEmpty &&
          priceCtrl.text.isNotEmpty && descCtrl.text.isNotEmpty
    ){
      Map<String, dynamic> product =
      {
        "name" : prodCtrl.text,
        "category" : cateCtrl.text,
        "price" : priceCtrl.text,
        "description" : descCtrl.text
      };
      await fs.collection("product").add(product);
      prodCtrl.clear();
      cateCtrl.clear();
      priceCtrl.clear();
      descCtrl.clear();

      print("데이터 저장 성공");
    }else{
      print("모든 항목을 입력하세요");
    }

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink,
          title: Text("제품 등록"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.list),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                Text("제품 정보", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: prodCtrl,
                    decoration: InputDecoration(
                      labelText: "제품명",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: cateCtrl,
                    decoration: InputDecoration(
                        labelText: "카테고리",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: priceCtrl,
                    decoration: InputDecoration(
                        labelText: "가격",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                ),
                Text("상세 설명", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),),
                TextField(
                  controller: descCtrl,
                  maxLines: 6,
                  minLines: 5,
                  decoration: InputDecoration(
                    labelText: "제품에 대한 설명을 입력해주세요.",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    alignLabelWithHint: true,
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: double.infinity, // 부모의 가로폭 전체를 차지
                  height: 50,             // 버튼 높이 지정 (선택)
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white
                    ),
                    onPressed: addProduct,
                    child: Text("등록하기"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
