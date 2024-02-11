import 'package:flutter/material.dart';

import 'Account.dart';
import 'enums/AccountType.dart';

class User extends ChangeNotifier {
  late AccountType _type;
  late Account _account;

  User({required AccountType type, required Account account}) {
    this._account = account;
    this._type = type;
  }

  AccountType get type => _type;

  String getId() {
    return '${this.mail}_${this.phone!}';
  }

  String get password => _account.password;

  set password(String value) {
    _account.password = value;
    notifyListeners();
  }

  String? get phone => _account.phone;

  set phone(String? value) {
    _account.phone = value;
    notifyListeners();
  }

  String get mail => _account.mail;

  set mail(String value) {
    _account.mail = value;
    notifyListeners();
  }
}