const String dish = 'dish';

class DishFields {
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
  final String price;
  final String createdby;
  final DateTime timecreated;

  // Dish constructor
  const Dish({
    this.id,
    required this.dishname,
    required this.price,
    required this.createdby,
    required this.timecreated,
  });
}
