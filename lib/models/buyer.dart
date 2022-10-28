const String buy = 'buy';

// Buyer
class BuyFields {
  static const String id = '_id';
  static const String dishname = 'dishname';
  static const String price = 'price';
  static const String quantity = 'quantity';
  static const String purchasetime = 'purchasetime';
}

class Buy {
  final int? id;
  final String dishname;
  final double price;
  final int quantity;
  final DateTime purchasetime;

  // Buyer constructor
  const Buy({
    this.id,
    required this.dishname,
    required this.price,
    required this.quantity,
    required this.purchasetime,
  });
}
