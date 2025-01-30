import 'package:nov_training_session/flutter/dataModel/user_data_model.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SqlService {
  SqlService._();
  static final SqlService db = SqlService._();
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDB();
    return _database!;
  }

  Future<Database> initDB() async {
    var documentDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentDirectory.path, "ProductDB.db");
    return await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      await db.execute(
          'CREATE TABLE Product (id INTEGER PRIMARY KEY, name TEXT, description TEXT, price INTEGER)');
    });
  }

  Future<List<ProductDataModel>> getAllProducts() async {
    final db = await database;
    var result = await db.query("Product");
    List<ProductDataModel> products = result.isNotEmpty
        ? result.map((product) => ProductDataModel.fromJson(product)).toList()
        : [];
    return products;
  }

  Future<int?> insert(ProductDataModel newProduct) async {
    final db = await database;
    var result = await db.insert("Product", newProduct.toJson());
    return result;
  }

  Future<int?> update(ProductDataModel updateProduct) async {
    final db = await database;
    var result = await db.update("Product", updateProduct.toJson(),
        where: 'id =?', whereArgs: [updateProduct.id]);
    return result;
  }

  Future<int?> delete(int id) async {
    final db = await database;
    var result = await db.delete("Product", where: 'id =?', whereArgs: [id]);
    return result;
  }
}
