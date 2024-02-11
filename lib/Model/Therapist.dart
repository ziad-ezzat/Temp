import 'package:gr_project/Model/Account.dart';

import 'User.dart';
import 'enums/AccountType.dart';

class Therapist extends User {
  late String practice_license_id;
  late String professional_title_id;
  late String national_id_card_picture;

  Therapist({
    required Account account,
    required AccountType type,
    required this.practice_license_id,
    required this.professional_title_id,
    required this.national_id_card_picture,
  }) : super(account: account, type: AccountType.THERAPIST);
}
