import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/home/data/models/surah_model.dart';

abstract interface class QuranRepo {
  Future<Either<Failure, List<SurahModel>>> getQuran(BuildContext context);
}
