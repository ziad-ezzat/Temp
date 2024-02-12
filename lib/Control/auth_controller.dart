import 'package:firebase_auth/firebase_auth.dart';
import 'package:gr_project/Model/LoginUserRequest.dart';
import 'package:dio/dio.dart';
import 'package:gr_project/Model/RegisterUserRequest.dart';

import '../Model/User.dart';
import '../Model/enums/AccountType.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final Dio _dio = Dio();

  static const _APIBase = 'http://172.22.208.1:3000/auth';
  static const _APILogin = '$_APIBase/login';
  static const _APISignUp = '$_APIBase/signup';

  Future<void> login(String email, String password) async {
    LoginUserRequest loginUserRequest = LoginUserRequest();

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      loginUserRequest.idToken = (await userCredential.user!.getIdToken())!;
      loginUserRequest.role = AccountType.USER;

      final data = loginUserRequest.toJson();

      print(data);

      await _dio.post(_APILogin, data: data);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        throw Exception('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        throw Exception('Wrong password provided for that user.');
      } else {
        throw Exception(e);
      }
    }
  }
  Future<void> signUp(MyUser user) async {
    try {
      RegisterUserRequest registerUserRequest = RegisterUserRequest();

      registerUserRequest.data = user;
      registerUserRequest.password = user.password;
      registerUserRequest.role = AccountType.USER.toString().split('.').last;

      await _dio.post(_APISignUp, data: registerUserRequest.toJson());
    } catch (e) {
      throw Exception(e);
    }
  }
}
