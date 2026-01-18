class User {
  final String id;
  final String email;
  final String name;

  User({required this.id, required this.email, required this.name});

  factory User.fromJson(dynamic json) {
    return User(id: json['_id'], name: json['name'], email: json['email']);
  }

  Map<String, dynamic> toJson() {
    return {"_id": id, "name": name, "email": email};
  }
}
