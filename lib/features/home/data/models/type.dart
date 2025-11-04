// ignore: constant_identifier_names
enum Type { meccan, medinan }

extension TypeExtension on Type {
  String getRevelationPlace({required String languageCode}) {
    if (languageCode == 'ar') {
      switch (this) {
        case Type.meccan:
          return 'مكية';
        case Type.medinan:
          return 'مدنية';
      }
    } else {
      switch (this) {
        case Type.meccan:
          return 'Meccan';
        case Type.medinan:
          return 'Medinan';
      }
    }
  }
}
