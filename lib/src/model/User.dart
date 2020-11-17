class User {
  String email;
  String name;
  String password;

  User(String email, String name, String password) {
    this.name = name;
    this.email = email;
    this.password = password;
  }

  Map<String, dynamic> toMap() {
    return {'name': name, 'email': email, 'password': password};
  }

  static User fromMap(Map<String, dynamic> user) {
    return new User(user["EMAIL"], user["NAME"], user["PASSWORD"]);
  }
}
