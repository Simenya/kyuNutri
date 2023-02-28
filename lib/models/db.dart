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
    const intType = 'INTEGER';
    const textType = 'TEXT NOT NULL';
    // const boolType = 'BOOLEAN NOT NULL';
    const doubleType = 'DOUBLE NOT NULL';

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
    // Dishes table
    await db.execute('''
        CREATE TABLE $dishtable(
          ${DishFields.id} $idType,
          ${DishFields.dishname} $textType,
          ${DishFields.price} $doubleType,
          ${DishFields.createdby} $intType,
          ${DishFields.timecreated} $textType,
          FOREIGN KEY (${DishFields.createdby}) REFERNCES $usertable (${UserFields.id}) ON DELETE NO ACTION ON UPDATE NO ACTION,
        )

    ''');
    // Buyers table
    await db.execute('''
        CREATE TABLE $buyertable(
          ${BuyFields.id} $idType,
          ${BuyFields.dishname} $intType,
          ${BuyFields.quantity} $textType,
          ${BuyFields.waiter} $intType,
          ${BuyFields.purchasetime} $textType,
          FOREIGN KEY (${BuyFields.waiter}) REFERNCES $usertable (${UserFields.id}) ON DELETE NO ACTION ON UPDATE NO ACTION,
          FOREIGN KEY (${BuyFields.dishname}) REFERNCES $dishtable ($DishFields.id}) ON DELETE NO ACTION ON UPDATE NO ACTION
        )

    ''');
  }
  // ===========================================================================================

  // USER MODEL
  // creating a user
  Future<User> createUser(User user) async {
    final db = await instance.database;
    final id = await db.insert(usertable, user.toJson());
    return user.copy(id: id);
  }

  // editing a user
  Future<int> updateUser(User user) async {
    final db = await instance.database;
    return db.update(usertable, user.toJson(),
        where: '${UserFields.id}=?', whereArgs: [user.id]);
  }

  // deleting a user
  Future<int> deleteUser(int id) async {
    final db = await instance.database;
    return await db
        .delete(buyertable, where: '${UserFields.id}=?', whereArgs: [id]);
  }

  // querrying users
  Future<User> readUsers() async {
    final db = await instance.database;
    const orderBy = '${UserFields.timecreated} ASC';
    dynamic result = await db.query(usertable, orderBy: orderBy);
    return result.map((json) => User.fromJson(json)).toList();
  }

  // querrying a user
  Future<User> readOneUser(int id) async {
    final db = await instance.database;
    final maps = await db.query(usertable,
        columns: UserFields.values,
        where: '${UserFields.id}=?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return User.fromJson(maps.first);
    } else {
      throw Exception('ID $id not FOUND');
    }
  }
  // ===========================================================================================

  // DISHES MODEL
  // creating a Dishes
  Future<Dish> createDish(Dish meal) async {
    final db = await instance.database;
    final id = await db.insert(dishtable, meal.toJson());
    return meal.copy(id: id);
  }

  // editing a Dishes
  Future<int> updateDish(Dish dish) async {
    final db = await instance.database;
    return db.update(dishtable, dish.toJson(),
        where: '${DishFields.id}=?', whereArgs: [dish.id]);
  }

  // deleting a Dishes
  Future<int> deleteDish(int id) async {
    final db = await instance.database;
    return await db
        .delete(buyertable, where: '${DishFields.id}=?', whereArgs: [id]);
  }

  // querrying a Dishes
  Future<Dish> readDishes() async {
    final db = await instance.database;
    const orderBy = '${DishFields.timecreated} ASC';
    dynamic result = await db.query(dishtable, orderBy: orderBy);
    return result.map((json) => Dish.fromJson(json)).toList();
  }

  // // querrying a dish
  Future<Dish> readOneDish(int id) async {
    final db = await instance.database;
    final maps = await db.query(dishtable,
        columns: DishFields.values,
        where: '${DishFields.id}=?',
        whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Dish.fromJson(maps.first);
    } else {
      throw Exception('ID $id not FOUND');
    }
  }

  // ==========================================================================================

  // BUYER MODEL
  // creating a Buyer
  Future<Buy> createPurchase(Buy recipt) async {
    final db = await instance.database;
    final id = await db.insert(buyertable, recipt.toJson());
    return recipt.copy(id: id);
  }

  // editing a Buyer
  Future<int> updatePurchase(Buy user) async {
    final db = await instance.database;
    return db.update(buyertable, user.toJson(),
        where: '${BuyFields.id}=?', whereArgs: [user.id]);
  }

  // deleting a Buyer
  Future<int> deletePurchase(int id) async {
    final db = await instance.database;
    return await db
        .delete(buyertable, where: '${BuyFields.id}=?', whereArgs: [id]);
  }

  // querrying  purchases
  Future<Buy> readPurchases() async {
    final db = await instance.database;
    const orderBy = '${BuyFields.purchasetime} ASC';
    dynamic result = await db.query(buyertable, orderBy: orderBy);
    return result.map((json) => Buy.fromJson(json)).toList();
  }

  //  // querrying a purchase
  Future<Buy> readOnePurchase(int id) async {
    final db = await instance.database;
    final maps = await db.query(buyertable,
        columns: BuyFields.values, where: '${BuyFields.id}=?', whereArgs: [id]);
    if (maps.isNotEmpty) {
      return Buy.fromJson(maps.first);
    } else {
      throw Exception('ID $id not FOUND');
    }
  }

// =============================================================================================

  // Closing a database
  Future close() async {
    final db = await instance.database;
    db.close();
  }
}
