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
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController ageCtrl = TextEditingController();
  final FirebaseFirestore fs = FirebaseFirestore.instance;
  Future<void> addUser () async{
    if(nameCtrl.text.isNotEmpty && ageCtrl.text.isNotEmpty){
      Map<String, dynamic> user = {
        "name" : nameCtrl.text,
        "age" : ageCtrl.text,
        "cdate" : Timestamp.now()
      };
      await fs.collection("users").add(user);
      nameCtrl.clear();
      ageCtrl.clear();
    } else{
      print("이름 또는 나이 입력하세요");
    }
  }
  Future<void> editUser() async{
    var users = fs.collection("users");
    var snap = await users.where("name", isEqualTo: nameCtrl.text).get();
    for(var doc in snap.docs){
      await users.doc(doc.id).update({
        "age" : int.tryParse(ageCtrl.text) ?? 0
      });
    }
  }
  Future<void> deleteUser(dynamic doc) async{
    await fs.collection("users").doc(doc.id).delete();
  }

  Widget getUserList() {
    return StreamBuilder(
      stream: fs.collection("users").snapshots(),
      builder: (context, snapshot) {
        if(!snapshot.hasData){
          return CircularProgressIndicator(

          );
        }
        return ListView(
          children: snapshot.data!.docs.map((doc){
            return ListTile(
              leading: Icon(Icons.person),
              title: Text("문서 ID : ${doc.id}"),
              subtitle: Text("이름 : ${doc["name"]}, 나이 : ${doc["age"]}"),
              trailing: IconButton(
                onPressed: (){
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("삭제"),
                        content: Text("정말 삭제?"),
                        actions: [
                          TextButton(
                              onPressed: (){
                                deleteUser(doc);
                                Navigator.of(context).pop();
                              },
                              child: Text("삭제")
                          ),
                          TextButton(
                              onPressed: (){
                                Navigator.of(context).pop();
                              },
                              child: Text("취소")
                          )
                        ],
                      );
                    },);
                },
                icon: Icon(Icons.delete),
              ),
            );
          }).toList(),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("파이어스토어")),
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  TextField(
                    controller: nameCtrl,
                    decoration: InputDecoration(
                      labelText: "이름",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)
                      )
                    ),
                  ),
                  SizedBox(height: 15,),
                  TextField(
                    controller: ageCtrl,
                    decoration: InputDecoration(
                        labelText: "나이",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          onPressed: addUser,
                          child: Text("저장")
                      ),
                      Padding(padding: EdgeInsetsGeometry.all(5)),
                      ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text("수정"),
                                    content: Text("정말 수정하시겠습니까?"),
                                    actions: [
                                      TextButton(
                                          onPressed: (){
                                            editUser();
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("수정")
                                      ),
                                      TextButton(
                                          onPressed: (){
                                            Navigator.of(context).pop();
                                          },
                                          child: Text("취소")
                                      )
                                    ],
                                  );
                                },
                            );
                          },
                          child: Text("수정"),
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Expanded(
                      child: getUserList()
                  )
                ],
              ),
          ),
        ),
      ),
    );
  }
}
