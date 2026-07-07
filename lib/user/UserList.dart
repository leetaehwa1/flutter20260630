import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:flutter20260629/user/UserEdit.dart';
=======
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
import 'DB.dart';

class UserList extends StatefulWidget {
  const UserList({super.key});

  @override
  State<UserList> createState() => _UserListState();
}

class _UserListState extends State<UserList> {
<<<<<<< HEAD
  List<Map<String, dynamic>> list = [];

  Future<void> _selectUserList() async{
=======
  List<Map<String, dynamic>> list =[];

  Future<void> _selectList() async{  // _는 자바의 private와 같은 개념.
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
    var tempList = await DB.selectUserList();
    setState(() {
      list = tempList;
    });
  }
<<<<<<< HEAD

=======
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
<<<<<<< HEAD
    _selectUserList();
=======
    _selectList();
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    // print(list[1]["name"]);
=======
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
    return Scaffold(
      appBar: AppBar(
        title: Text("사용자 목록"),
      ),
<<<<<<< HEAD
      body : ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            var user = list[index];
            // Map<String, dynamic> user = list[index];
            return ListTile(
              leading: Icon(Icons.home),
              title : Text("아이디 : ${user["userId"]}, 이름 : ${user["name"]}"),
              subtitle: Text("나이 : ${user["age"]}"),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                      onPressed: () async{
                        bool flg = await Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserEdit(userId : user["userId"]),
                            )
                        );
                        if(flg){
                          _selectUserList();
                        }
                      },
                      icon: Icon(Icons.edit)
                  ),
                  IconButton(
                      onPressed: (){
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("삭제"),
                              content: Text("${user['name']}님을 정말 삭제하시겠습니까?"),
                              actions: [
                                TextButton(
                                    onPressed: () async{
                                      await DB.deleteUser(user["userId"]);
                                      Navigator.of(context).pop();
                                      _selectUserList();
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
                          },
                        );
                      }, icon: Icon(Icons.delete)
                  )
                ],
              ),
            );
          },
=======
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.home),
            title: Text("집 ㄱㄱ"),
            subtitle: Text("진짜 ㄱㄱ"),
            trailing: Row(
              mainAxisSize:  MainAxisSize.min,
              children: [
                Icon(Icons.edit),
                Icon(Icons.delete)
              ],
            ),
          );
        },
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      )
    );
  }
}
