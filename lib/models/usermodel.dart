const String usertable = 'user';

class UserFields {
  static const String id = '_id';
  static const String username = 'username';
  static const String email = 'email';
  static const String password = 'password';
  static const String timecreated = 'timecreated';
}

// class User
class User {
  final int? id;
  final String username;
  final String email;
  final String password;
  final DateTime timecreated;

  // User constructor
  const User({
    this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.timecreated,
  });
}
