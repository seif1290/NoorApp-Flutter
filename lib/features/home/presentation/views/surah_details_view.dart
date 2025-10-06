import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/utils/constants/ui_constants/app_components.dart';
import 'package:noor/core/utils/constants/ui_constants/app_values.dart';
import 'package:noor/features/home/data/models/ayah_model.dart';

class SurahDetailsView extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(surahName)),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: AppComponents.screenHeight(context) * 0.4),
            Container(
              height: 32.h,
              width: 32.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              child: Text(
                ayahs.first.numberInSurah.toString(),
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const SizedBox(height: AppValues.md),
            Text(ayahs[0].text, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ),
    );
  }
}
