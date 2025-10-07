import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/utils/constants/ui_constants/app_components.dart';
import 'package:noor/core/utils/constants/ui_constants/app_strings.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/home/data/models/ayah_model.dart';

class SurahDetailsView extends StatefulWidget {
  const SurahDetailsView({
    super.key,
    required this.ayahs,
    required this.surahName,
    this.onArrowBackPressed,
  });
  final List<AyahModel> ayahs;
  final String surahName;
  final VoidCallback? onArrowBackPressed;

  @override
  State<SurahDetailsView> createState() => _SurahDetailsViewState();
}

class _SurahDetailsViewState extends State<SurahDetailsView> {
  bool showBasmala = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.surahName)),

      body: Padding(
        padding: EdgeInsetsGeometry.only(
          top: AppValues.md.h,
          right: AppValues.sm.w,
          left: AppValues.sm.w,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (showBasmala)
                Text(
                  AppStrings.basmala,
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(fontSize: 36),
                  textAlign: TextAlign.center,
                ),
              SizedBox(height: AppComponents.screenHeight(context) * 0.1),
              Center(
                child: Text(
                  '${_reformatAyahText(text: widget.ayahs[0].text)}\uFD3F${AppComponents.numToArabic(number: widget.ayahs[0].numberInSurah)}\uFD3E',
                  style: Theme.of(
                    context,
                  ).textTheme.titleLarge!.copyWith(height: 1.5.h),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// This method removes [بسم الله الرحمن الرحيم]
  /// from the beginning of the ayah if exists
  String _reformatAyahText({required String text}) {
    if (text.startsWith(AppStrings.basmala)) {
      return text.replaceAll(AppStrings.basmala, '').trim();
    } else {
      return text;
    }
  }
}
