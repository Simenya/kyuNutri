const String dishtable = 'dish';

class DishFields {
  static final List<String> values = [
    id,
    dishname,
    price,
    createdby,
    timecreated
  ];
  static const String id = '_id';
  static const String dishname = 'dishname';
  static const String price = 'price';
  static const String createdby = 'createdby';
  static const String timecreated = 'timecreated';
}

// class dish
class Dish {
  final int? id;
  final String dishname;
  final double price;
  final int createdby;
  final DateTime timecreated;

  // Dish constructor
  const Dish({
    this.id,
    required this.dishname,
    required this.price,
    required this.createdby,
    required this.timecreated,
  });

  // Copying Dish
  Dish copy({
    int? id,
    String? dishname,
    double? price,
    int? createdby,
    DateTime? timecreated,
  }) =>
      Dish(
        id: id ?? this.id,
        dishname: dishname ?? this.dishname,
        price: price ?? this.price,
        createdby: createdby ?? this.createdby,
        timecreated: timecreated ?? this.timecreated,
      );
  // converting a Dish object into datatype literals
  static Dish fromJson(Map<String, Object?> json) => Dish(
        id: json[DishFields.id] as int?,
        dishname: json[DishFields.dishname] as String,
        price: json[DishFields.price] as double,
        createdby: json[DishFields.createdby] as int,
        timecreated: DateTime.parse(json[DishFields.timecreated] as String),
      );

// Converting the Dish object to the json format
  Map<String, Object?> toJson() => {
        DishFields.id: id,
        DishFields.dishname: dishname,
        DishFields.price: price,
        DishFields.createdby: createdby,
        DishFields.timecreated: timecreated.toIso8601String(),
      };
}
