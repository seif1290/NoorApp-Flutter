// ignore: constant_identifier_names
enum Type { meccan, medinan }

extension TypeExtension on Type {
  String getRevelationPlace({String? locleName}) {
    if (locleName == 'en') {
      switch (this) {
        case Type.meccan:
          return 'Meccan';
        case Type.medinan:
          return 'Medinan';
      }
    } else {
      switch (this) {
        case Type.meccan:
          return 'مكية';
        case Type.medinan:
          return 'مدنية';
      }
    }
  }
}
