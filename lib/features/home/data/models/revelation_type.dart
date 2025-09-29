// ignore: constant_identifier_names
enum RevelationType { Meccan, Medinan }

extension RevelationTypeExtension on RevelationType {
  String getRevelationType({required String languageCode}) {
    if (languageCode == 'ar') {
      switch (this) {
        case RevelationType.Meccan:
          return 'مكية';
        case RevelationType.Medinan:
          return 'مدنية';
      }
    } else {
      switch (this) {
        case RevelationType.Meccan:
          return 'Meccan';
        case RevelationType.Medinan:
          return 'Medinan';
      }
    }
  }
}
