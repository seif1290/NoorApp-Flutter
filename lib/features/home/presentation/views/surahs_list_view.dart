import 'package:flutter/material.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/presentation/views/surah_card.dart';

class SurahsListView extends StatelessWidget {
  const SurahsListView({super.key, required this.surahs, this.onCardTab});
  final List<SurahModel> surahs;
  final Function(int surahNumber)? onCardTab;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: surahs.length,
      itemBuilder: (context, index) {
        return SurahCard(
          surahModel: surahs[index],
          surahNumber: index + 1,
          onCardTab: onCardTab != null
              ? () {
                  onCardTab!(index + 1);
                }
              : () {},
        );
      },
    );
  }
}
