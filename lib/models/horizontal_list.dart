import 'package:gr_project/Model/enums/AccountType.dart';
import 'package:gr_project/mock.dart';

class HorizontalList {
  String docImage;
  String docName;
  String docSpecialist;
  String rate;
  int price;
  int perMinute;
  HorizontalList({
    required this.docImage,
    required this.docName,
    required this.docSpecialist,
    required this.rate,
    required this.price,
    required this.perMinute,
  });
}

Future<List<HorizontalList>> getHorizontalList() async {
  List<HorizontalList> list = [];

  Mock mock = await Mock.create();

  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: mock.therapist.mail,
      docSpecialist: mock.therapist.type.toString().split('.').last,
      rate: '4.9 (5587 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );
  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: 'Areg Hagag',
      docSpecialist: 'Psychologist',
      rate: '4.7 (5287 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );
  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: 'Mona Ali',
      docSpecialist: 'Psychologist',
      rate: '4.5 (5187 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );
  list.add(
    HorizontalList(
      docImage: 'assets/images/Photo.png',
      docName: 'Mohamed Elbaiomy',
      docSpecialist: 'Psychologist',
      rate: '4.0 (578 reviews)',
      price: 350,
      perMinute: 30,
    ),
  );

  return list;
}
