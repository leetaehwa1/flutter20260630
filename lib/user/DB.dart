import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DB {
  // 데이터베이스 경로와 이름 정의
  static Future<Database> getDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

<<<<<<< HEAD
    // 테이블 없다면 생성하고 테이블을 생성하는 작업
    return await openDatabase(path, version: 3, onCreate: (db, version) async {
=======
    // 테이블이 없다면 생성하고 테이블을 생성하는 작업
    return await openDatabase(path, version: 2, onCreate: (db, version) async {
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
      await db.execute('''
        CREATE TABLE TBL_USER(
          userId INTEGER PRIMARY KEY AUTOINCREMENT, 
          name TEXT, 
          age INTEGER
        )
      ''');

    },
      onUpgrade: (db, oldVersion, newVersion) async {
<<<<<<< HEAD
        if (oldVersion < 3) {
=======
        if (oldVersion < 2) {
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
          await db.execute('''
        CREATE TABLE TBL_USER(
          userId INTEGER PRIMARY KEY AUTOINCREMENT, 
          name TEXT, 
          age INTEGER
        )
      ''');
        }
      },
    );
<<<<<<< HEAD

  }

  static Future<void> insertUser(String name, int age) async{
    final db = await getDatabase();
    await db.insert("TBL_USER", {'name' : name, 'age' : age});
  }

  static Future<List<Map<String, dynamic>>> selectUserList() async{
    final db = await getDatabase();
    return await db.query("TBL_USER");
  }

  static Future<List<Map<String, dynamic>>> selectUser(int userId) async{
    final db = await getDatabase();
    return await db.query("TBL_USER", where: "userId = ?", whereArgs: [userId]);
  }

  static Future<void> deleteUser(int userId) async{
    final db = await getDatabase();
    await db.delete("TBL_USER", where: "userId = ?", whereArgs: [userId]);
  }

  static Future<void> updateUser(String name, int age, int userId) async{
    final db = await getDatabase();
    await db.update("TBL_USER", {'name' : name, 'age' : age}, where: "userId = ?", whereArgs: [userId]);
  }
}

=======
  }
  static Future<void> insertUser(String name, int age)async {
    // Future => 현실 세계에서 카페의 진동벨이 울리기 전 까지의 과정. 쉽게 말해 동기화 과정.
    final db = await getDatabase();
    await db.insert("TBL_USER", {'name' : name, 'age' : age});
  }
    static Future<List<Map<String, dynamic>>> selectUserList() async {
      // Future => 현실 세계에서 카페의 진동벨이 울리기 전 까지의 과정. 쉽게 말해 동기화 과정.
      final db = await getDatabase();
      return await db.query("TBL_USER");
    }
}
>>>>>>> 8d621e356b4290804732b4343690aa4ab7a8807f
