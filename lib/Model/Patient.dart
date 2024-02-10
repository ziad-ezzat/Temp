import 'Account.dart';
import 'User.dart';
import 'enums/AccountType.dart';

class Patient extends User {
  String languagePreference;
  String country;

  Patient({
    required Account account,
    required this.languagePreference,
    required this.country, 
    required AccountType type,  
  }) : super(type: AccountType.PATIENT, account: account);
}