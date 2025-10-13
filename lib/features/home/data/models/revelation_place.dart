// ignore: constant_identifier_names
enum RevelationPlace { Mecca, Madina }

extension RevelationPlaceExtension on RevelationPlace {
  String getRevelationPlace({required String languageCode}) {
    if (languageCode == 'ar') {
      switch (this) {
        case RevelationPlace.Mecca:
          return 'مكية';
        case RevelationPlace.Madina:
          return 'مدنية';
      }
    } else {
      switch (this) {
        case RevelationPlace.Mecca:
          return 'Mecca';
        case RevelationPlace.Madina:
          return 'Madina';
      }
    }
  }
}
