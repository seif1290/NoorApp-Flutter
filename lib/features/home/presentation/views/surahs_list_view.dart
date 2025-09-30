import 'package:flutter/material.dart';
import 'package:noor/features/home/data/models/surah_model.dart';
import 'package:noor/features/home/presentation/views/surah_card.dart';

class SurahsListView extends StatelessWidget {
  const SurahsListView({
    super.key,
    required this.surahs,
    this.onCardTab,
    this.onPlayButtonTap,
  });
  final List<SurahModel> surahs;
  final VoidCallback? onCardTab;
  final VoidCallback? onPlayButtonTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: surahs.length,
      itemBuilder: (context, index) {
        return SurahCard(
          surahModel: surahs[index],
          onCardTab: onCardTab,
          onPlayButtonTap: onPlayButtonTap,
        );
      },
    );
  }
}
