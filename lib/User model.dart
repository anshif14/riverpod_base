// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);
class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String phone;
  final String website;


  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
    id: json["id"],
    name: json["name"],
    username: json["username"],
    email: json["email"],
    phone: json["phone"],
    website: json["website"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "username": username,
    "email": email,
    "phone": phone,
    "website": website,
  };
}




