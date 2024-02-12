class MyUser {
  
  int? id;
  String email;
  String phoneNumber;
  String password;
  String languagePreference;
  String country;
  DateTime? createdAt;
  DateTime? updatedAt;

  MyUser({
    this.id,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.languagePreference,
    required this.country,
    this.createdAt,
    this.updatedAt,
  });
  
  Map<String,dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'phoneNumber': phoneNumber,
      'password': password,
      'languagePreference': languagePreference,
      'country': country,
      'createdAt': createdAt,
      'updatedAt': updatedAt,
    };
  }
}