import 'package:flutter/foundation.dart';

class Name with ChangeNotifier {
  final String name;
  final String description;
  final String benefit;
  final String image;
  int rememberRating = 0;

  Name([this.name, this.description, this.benefit, this.image]);

  updateRating(int _rating) {
    rememberRating = _rating;
    notifyListeners();
  }

  static List<Name> getNameList() {
    List<Name> list = <Name>[
      Name(
        'Shahada',
        'God is one and Mohamed is his messenger',
        'Strenghten your heart',
        'shahada.jpg',
      ),
      Name(
        'Prayer',
        '5 times a day',
        'Strenghten you and connect you to your Creator',
        'prayer.png',
      ),
      Name(
        'Zakat',
        '2,5% du montant total de ses avoirs (ou bien 2,579%, si l’on se base sur l’année solaire).',
        'Strenghten you and connect you to your Creator',
        'zakat1.png',
      ),
      Name(
        'Fasting',
        'During the month of Ramadan everyday from sunrize to sunset',
        'Strenghten you and connect you to your Creator. Increase your Iman',
        'fasting.png',
      ),
      Name(
        'Hajj or Pilgrimage',
        ' At least muslim should do it once in this life time if his has the economic and phisic abilities',
        'Strenghten you and connect you to your Creator and to the rest of the muslim around the world',
        'hajj.png',
      ),
    ];
    return list;
  }
}
