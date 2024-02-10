import 'package:gr_project/Model/Account.dart';
import 'package:gr_project/Model/Patient.dart';
import 'package:gr_project/Model/Therapist.dart';
import 'package:gr_project/Model/enums/AccountType.dart';

class Mock {

  late Patient patient;

  late Therapist therapist;
  late Therapist therapist2;
  late Therapist therapist3;
  late Therapist therapist4;

  Mock._create();

  static Future<Mock> create() async {
    var mock = Mock._create();

    mock.patient = Patient (
      languagePreference: 'en',
      country: 'EGP',
      type: AccountType.PATIENT,
      account: Account(
        password: '123456',
        mail: 'ezzat@gmail.com',
        id: '123456',
      ),
    );

    mock.therapist = Therapist(
      account: Account(
        password: '123456',
        mail: 'ahmed',
        id: '123456',
      ),
      type: AccountType.THERAPIST,
      practice_license_id: '123456',
      professional_title_id: '123456',
      national_id_card_picture: '123456',
    );

    mock.therapist2 = Therapist(
      account: Account(
        password: '123456',
        mail: 'momo',
        id: '123456',
      ),
      type: AccountType.THERAPIST,
      practice_license_id: '123456',
      professional_title_id: '123456',
      national_id_card_picture: '123456',
    );

    mock.therapist3 = Therapist(
      account: Account(
        password: '123456',
        mail: 'fgfg',
        id: '123456',
      ),
      type: AccountType.THERAPIST,
      practice_license_id: '123456',
      professional_title_id: '123456',
      national_id_card_picture: '123456',
    );

    mock.therapist4 = Therapist(
      account: Account(
        password: '123456',
        mail: 'asas',
        id: '123456',
      ),
      type: AccountType.THERAPIST,
      practice_license_id: '123456',
      professional_title_id: '123456',
      national_id_card_picture: '123456',
    );

    return mock;
  }
}
