import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import '../firebase_options.dart';

class ProductEditPage extends StatefulWidget {
  final DocumentSnapshot doc; // 수정할 데이터 전달받기
  const ProductEditPage({super.key, required this.doc});

  @override
  State<ProductEditPage> createState() => _ProductEditPageState();
}

class _ProductEditPageState extends State<ProductEditPage> {
  late TextEditingController prodCtrl;
  late TextEditingController cateCtrl;
  late TextEditingController priceCtrl;
  late TextEditingController descCtrl;

  @override
  void initState() {
    super.initState();
    // 기존 데이터를 컨트롤러에 미리 세팅
    prodCtrl = TextEditingController(text: widget.doc["name"]);
    cateCtrl = TextEditingController(text: widget.doc["category"]);
    priceCtrl = TextEditingController(text: widget.doc["price"].toString());
    descCtrl = TextEditingController(text: widget.doc["description"]);
  }

  Future<void> updateProduct() async {
    await FirebaseFirestore.instance.collection("product").doc(widget.doc.id).update({
      "name": prodCtrl.text,
      "category": cateCtrl.text,
      "price": priceCtrl.text,
      "description": descCtrl.text,
    });
    Navigator.pop(context); // 수정 완료 후 리스트로 복귀
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("제품 수정"),
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView( // 키보드 입력 시 화면 가림 방지
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              _buildTextField(prodCtrl, "제품명"),
              _buildTextField(cateCtrl, "카테고리"),
              _buildTextField(priceCtrl, "가격", prefix: "￦"),
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
              const SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: updateProduct,
                  child: const Text("수정 완료", style: TextStyle(fontSize: 18)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

// 텍스트필드 공통 디자인 함수
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
