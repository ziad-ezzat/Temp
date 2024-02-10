import 'package:flutter/material.dart';

class Account extends ChangeNotifier {
  String password;
  String? phone;
  String mail;
  late DateTime created_at;
  late String id;

  Account(
      {required this.password,
      this.phone,
      required this.mail,
      required this.id}) {
    created_at = DateTime.now();
  }
}
