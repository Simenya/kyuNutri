const String buyertable = 'buy';

// Buyer
class BuyFields {
  static final List<String> values = [
    id,
    dishname,
    quantity,
    purchasetime,
    waiter
  ];
  static const String id = '_id';
  static const String dishname = 'dishname';
  static const String quantity = 'quantity';
  static const String purchasetime = 'purchasetime';
  static const String waiter = 'waiter';
}

class Buy {
  final int? id;
  final String dishname;
  final int quantity;
  final DateTime purchasetime;
  final int waiter;

  // Buyer constructor
  const Buy({
    this.id,
    required this.dishname,
    required this.quantity,
    required this.purchasetime,
    required this.waiter,
  });

  // Copying the Buyer
  Buy copy({
    int? id,
    String? dishname,
    int? quantity,
    DateTime? purchasetime,
    int? waiter,
  }) =>
      Buy(
        id: id ?? this.id,
        dishname: dishname ?? this.dishname,
        quantity: quantity ?? this.quantity,
        purchasetime: purchasetime ?? this.purchasetime,
        waiter: waiter ?? this.waiter,
      );
  static Buy fromJson(Map<String, Object?> json) => Buy(
        id: json[BuyFields.id] as int?,
        dishname: json[BuyFields.dishname] as String,
        quantity: json[BuyFields.quantity] as int,
        purchasetime: DateTime.parse(json[BuyFields.purchasetime] as String),
        waiter: json[BuyFields.waiter] as int,
      );

  // Converting the Buy object to the json format
  Map<String, Object?> toJson() => {
        BuyFields.id: id,
        BuyFields.dishname: dishname,
        BuyFields.quantity: quantity,
        BuyFields.purchasetime: purchasetime.toIso8601String(),
      };
}
