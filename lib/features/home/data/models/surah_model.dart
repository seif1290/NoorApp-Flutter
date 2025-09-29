import 'package:equatable/equatable.dart';
import 'package:noor/features/home/data/models/ayah_model.dart';
import 'package:noor/features/home/data/models/revelation_type.dart';

class SurahModel extends Equatable {
  final int number;
  final String name;
  final String englishName;
  final String englishNameTranslation;
  final RevelationType revelationType;
  final List<AyahModel> ayahs;

  const SurahModel({
    required this.number,
    required this.name,
    required this.englishName,
    required this.englishNameTranslation,
    required this.revelationType,
    required this.ayahs,
  });
  @override
  List<Object?> get props => [
    number,
    name,
    englishName,
    englishNameTranslation,
    revelationType,
    ayahs,
  ];
}
