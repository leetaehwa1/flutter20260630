import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import '../firebase_options.dart';
import 'ProductEdit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProductAddPage(),
  ));
}

// 등록 화면 위젯
class ProductAddPage extends StatefulWidget {
  const ProductAddPage({super.key});

  @override
  State<ProductAddPage> createState() => _ProductAddPageState();
}

class _ProductAddPageState extends State<ProductAddPage> {
  TextEditingController prodCtrl = TextEditingController();
  TextEditingController cateCtrl = TextEditingController();
  TextEditingController priceCtrl = TextEditingController();
  TextEditingController descCtrl = TextEditingController();
  final FirebaseFirestore fs = FirebaseFirestore.instance;

  Future<void> addProduct() async {
    if (prodCtrl.text.isNotEmpty && cateCtrl.text.isNotEmpty &&
        priceCtrl.text.isNotEmpty && descCtrl.text.isNotEmpty) {
      await fs.collection("product").add({
        "name": prodCtrl.text,
        "category": cateCtrl.text,
        "price": priceCtrl.text,
        "description": descCtrl.text
      });
      prodCtrl.clear();
      cateCtrl.clear();
      priceCtrl.clear();
      descCtrl.clear();
      print("데이터 저장 성공");
    } else {
      print("모든 항목을 입력하세요");
    }
  }

  // Future<void> editUser() async{
  //   var users = fs.collection("users");
  //   var snap = await users.where("name", isEqualTo: nameCtrl.text).get();
  //   for(var doc in snap.docs){
  //     await users.doc(doc.id).update({
  //       "age" : int.tryParse(ageCtrl.text) ?? 0
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pink,
        title: const Text("제품 등록", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductListScreen()));
            },
            icon: const Icon(Icons.list, color: Colors.white),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text("제품 정보", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              _buildTextField(prodCtrl, "제품명"),
              _buildTextField(cateCtrl, "카테고리"),
              _buildTextField(priceCtrl, "가격", prefix: "￦"),
              const Text("상세 설명", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: descCtrl,
                  maxLines: 5,
                  decoration: InputDecoration(
                    labelText: "제품에 대한 설명을 입력해주세요.",
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    alignLabelWithHint: true,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white),
                  onPressed: addProduct,
                  child: const Text("등록하기"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // 반복되는 TextField 디자인을 위한 헬퍼 함수
  Widget _buildTextField(TextEditingController controller, String label, {String? prefix}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          prefixText: prefix,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}

// 리스트 화면 위젯
class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("제품 리스트"),
        backgroundColor: Colors.pink,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection("product").snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var doc = snapshot.data!.docs[index];

              return ListTile(
                // 제목: 제품명
                title: Text(doc["name"], style: const TextStyle(fontWeight: FontWeight.bold)),

                // 부제목: 카테고리, 가격, 설명을 한 줄 또는 여러 줄로 구성
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.category, size: 14),
                        Text(" ${doc["category"]}  "),
                        const Icon(Icons.attach_money, size: 14),
                        Text(" ￦${doc["price"]}"),
                      ],
                    ),
                    Text(doc["description"]),
                  ],
                ),

                // 오른쪽 수정/삭제 버튼
                trailing: Row(
                  mainAxisSize: MainAxisSize.min, // Row가 차지하는 크기를 최소화
                  children: [
                    IconButton(
                      icon: const Icon(Icons.edit, color: Colors.grey),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ProductEditPage(doc: doc),));
                      },
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete, color: Colors.red),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                title: Text("삭제"),
                                content: Text("정말 삭제하시겠습니까?"),
                                actions: [
                                  TextButton(
                                      onPressed: (){
                                        FirebaseFirestore.instance.collection("product").doc(doc.id).delete();
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("삭제")
                                  ),
                                  TextButton(
                                      onPressed: (){
                                        Navigator.of(context).pop();
                                      },
                                      child: Text("취소")
                                  ),
                                ],
                              );
                            },
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

