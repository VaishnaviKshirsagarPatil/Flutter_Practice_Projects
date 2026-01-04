import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class TodoDatabase{
  //create Database

  Future<Database> createDB() async{
   Database db=await openDatabase(
     join(await getDatabasesPath(), "TodoDB.db"),
     version: 1,
     onCreate: (db, version) {
        db.execute('''
          CREATE TABLE Todo(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            description TEXT,
            date TEXT
          )
        ''');
     },

   );
   return db;
    
  }
  //GEt Data
  Future<List<Map>> getTodoItems() async{
    Database localDb= await createDB();
    List<Map> list=await localDb.query("Todo");
    return list;
  }

  //ADD Data

  void insertTodoItem(Map<String, dynamic>  obj) async{
    Database localDb=await createDB();
    await localDb.insert(  "Todo",  obj,
       conflictAlgorithm: ConflictAlgorithm.replace,
      );

  }

  //Update data

   Future<void> updateTodoItem(Map<String, dynamic>  obj) async{
     Database localDb=await createDB();
     await localDb.update(
      "Todo",  obj, where: "id=?", whereArgs:[obj['id']]
      );
   }

   //Delete data
   Future<void> deleteTodoItem(int index)async{
    Database localDb=await createDB();
    await localDb.delete("Todo", where: "id=?", whereArgs: [index]);
   }
}