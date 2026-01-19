import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class EcommerceDatabase {
  // Create DB
  Future<Database> createDB() async {
    Database db = await openDatabase(
      join(await getDatabasesPath(), "productDB.db"),
      version: 1,
      onCreate: (db, version) {
        db.execute('''
          CREATE TABLE product(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            name TEXT,
            description TEXT,
            price TEXT,
            image TEXT,
            isFavourite INTEGER
          )
        ''');
      },
    );
    return db;
  }

  // Get all products
  Future<List<Map>> getTodoItems() async {
    Database localDb = await createDB();
    return await localDb.query("product");
  }

  // Insert product
  Future<void> insertTodoItem(Map<String, dynamic> obj) async {
    Database localDb = await createDB();
    await localDb.insert(
      "product",
      obj,
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  // Update favorite status
  Future<void> updateTodoItem(int id, bool isFavourite) async {
    Database localDb = await createDB();
    await localDb.update(
      "product",
      {'isFavourite': isFavourite ? 1 : 0},
      where: 'id = ?',
      whereArgs: [id],
    );
  }
}
