import 'package:intl/intl.dart';

String numToArabic({required int number}) =>
    NumberFormat(null, 'ar_EG').format(number);
