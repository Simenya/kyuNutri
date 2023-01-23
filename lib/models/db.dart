import 'package:path/path.dart' as p;
import 'package:sqflite/sqflite.dart';
import 'usermodel.dart';
import 'buyer.dart';
import 'dishes_model.dart';

class FoodHub {
  // inializing the class
  static final FoodHub instance = FoodHub._init();

  // Database creaation
  static Database? _database;
  // private constructor
  FoodHub._init();

  // creating a connection to the database
  Future<Database> get database async {
    // if the database exist
    if (_database != null) return _database!;

    // Unexisting database
    _database = await _initDB('Hub.db');
    return _database!;
  }

  // Initializing the database
  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = p.join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // createDB
  Future _createDB(Database db, int version) async {
    // table creation goes in here
    const idType = 'INTEGER PRIMARY KEY AUTO_INCREMENT';
    const textType = 'TEXT NOT NULL';
    // const boolType = 'BOOLEAN NOT NULL';
    // const integerType = 'INTEGER NOT NULL';

    // Users table
    await db.execute('''
        CREATE TABLE $usertable(
          ${UserFields.id} $idType,
          ${UserFields.username} $textType,
          ${UserFields.email} $textType,
          ${UserFields.password} $textType,
          ${UserFields.timecreated} $textType,
        )

    ''');
    // Buyers table
    await db.execute('''
        CREATE TABLE $buy(
          ${BuyFields.id} $idType,
          ${BuyFields.dishname} $textType,
          ${BuyFields.price} $textType,
          ${BuyFields.quantity} $textType,
          ${BuyFields.waiter} $textType,
          ${BuyFields.purchasetime} $textType,
        )

    ''');

    // Dishes table
    await db.execute('''
        CREATE TABLE $dish(
          ${DishFields.id} $idType,
          ${DishFields.dishname} $textType,
          ${DishFields.price} $textType,
          ${DishFields.timecreated} $textType,
        )

    ''');
  }

  // Closing a database
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
