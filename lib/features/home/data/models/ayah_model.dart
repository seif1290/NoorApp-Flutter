import 'package:equatable/equatable.dart';

class AyahModel extends Equatable {
  final int number;
  final String audio;
  final List<String> audioSecondary;
  final String text;
  final int numberInSurah;
  final int juz;
  final int manzil;
  final int page;
  final int ruku;
  final int hizbQuarter;
  final bool sajda;

  const AyahModel({
    required this.number,
    required this.audio,
    required this.audioSecondary,
    required this.text,
    required this.numberInSurah,
    required this.juz,
    required this.manzil,
    required this.page,
    required this.ruku,
    required this.hizbQuarter,
    required this.sajda,
  });

  @override
  List<Object?> get props => [
    number,
    audio,
    audioSecondary,
    text,
    numberInSurah,
    juz,
    manzil,
    page,
    ruku,
    hizbQuarter,
    sajda,
  ];
}
