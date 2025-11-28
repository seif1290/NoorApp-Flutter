import 'package:flutter/material.dart';
import 'package:noor/features/home/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/home/presentation/views/widgets/surah_card.dart';

class QuranListView extends StatelessWidget {
  const QuranListView({
    super.key,
    required this.surahs,
    this.onCardTab,
    this.onPlayButtonTap,
  });
  final List<SurahMetadataModel> surahs;
  final Function(int surahNumber)? onCardTab;
  final Function(int surahNumber)? onPlayButtonTap;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: surahs.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        return SurahCard(
          surah: surahs[index],
          index: index,
          onCardTab: onCardTab != null
              ? () {
                  onCardTab!(surahs[index].id);
                }
              : () {},
          onPlayButtonTap: onPlayButtonTap != null
              ? () {
                  onPlayButtonTap!(surahs[index].id);
                }
              : () {},
        );
      },
    );
  }
}
