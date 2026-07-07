import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  TextEditingController numCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      'C', '(', '%', '/',
      '7', '8', '9', '*',
      '4', '5', '6', '-',
      '1', '2', '3', '+',
      '0', '00', '.', '='
    ];
    return MaterialApp(
        home : Scaffold(
            appBar: AppBar(title : Text("계산기")),
            body : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: numCtrl,
                    decoration: InputDecoration(
                      hintText: "숫자",
                      prefixIcon: Icon(Icons.calculate),
                      suffixIcon: Icon(Icons.check_circle, color: Colors.green,),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        mainAxisSpacing: 6,
                        crossAxisSpacing: 6
                    ),
                    itemCount: labels.length,
                    itemBuilder: (context, index) {
                      return ElevatedButton(
                          onPressed: (){},
                          child: Text(labels[index], style:TextStyle(color : Colors.black, fontSize: 30)),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: (index+1) % 4 == 0 || index < 4 ? Colors.blue[100] : Colors.grey[100],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero
                              )
                          )
                      );
                    },
                  ),
                )
              ],
            )
        )
    );
  }
}
