import 'package:flutter/material.dart';
import 'package:noor/features/home/data/models/surah_model/surah_model.dart';
import 'package:noor/features/home/presentation/views/widgets/surah_card.dart';

class BuildQuranList extends StatelessWidget {
  const BuildQuranList({
    super.key,
    required this.surahs,
    this.onCardTab,
    this.onPlayButtonTap,
  });
  final List<SurahModel> surahs;
  final Function(int surahNumber)? onCardTab;
  final Function(int surahNumber)? onPlayButtonTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: surahs.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return SurahCard(
          surahModel: surahs[index],
          surahNumber: index + 1,
          index: index,
          onCardTab: onCardTab != null
              ? () {
                  onCardTab!(index + 1);
                }
              : () {},
          onPlayButtonTap: onPlayButtonTap != null
              ? () {
                  onPlayButtonTap!(index + 1);
                }
              : () {},
        );
      },
    );
  }
}
