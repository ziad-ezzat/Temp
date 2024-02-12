import 'package:gr_project/Model/User.dart';

class RegisterUserRequest {
  late MyUser data;
  late String role = 'USER';
  late String password;

  Map<String,dynamic> toJson() {
    return {
      'data': data.toJson(),
      'role': role,
      'password': password,
    };
  }
}
