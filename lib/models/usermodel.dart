const String usertable = 'user';

class UserFields {
  static final List<String> values = [
    id,
    username,
    email,
    password,
    timecreated
  ];
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
  // Copying the user
  User copy({
    int? id,
    String? username,
    String? email,
    String? password,
    DateTime? timecreated,
  }) =>
      User(
        id: id ?? this.id,
        username: username ?? this.username,
        email: email ?? this.email,
        password: password ?? this.password,
        timecreated: timecreated ?? this.timecreated,
      );
  // converting a Buy object into datatype literals
  static User fromJson(Map<String, Object?> json) => User(
        id: json[UserFields.id] as int?,
        username: json[UserFields.username] as String,
        email: json[UserFields.email] as String,
        password: json[UserFields.password] as String,
        timecreated: DateTime.parse(json[UserFields.timecreated] as String),
      );
// Converting the User object to the json object
  Map<String, Object?> toJson() => {
        UserFields.id: id,
        UserFields.username: username,
        UserFields.email: email,
        UserFields.password: password,
        UserFields.timecreated: timecreated.toIso8601String(),
      };
}
