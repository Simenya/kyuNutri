import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

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
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  // createDB
  Future _createDB(Database db, int version) async {}

  // Closing a database
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
