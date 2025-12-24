import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:noor/features/tarteel/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/tarteel/presentation/views/widgets/surah_card.dart';

class QuranListView extends StatelessWidget {
  const QuranListView({
    super.key,
    required this.surahs,
    this.onCardTab,
    this.onPlayButtonTap,
  });
  final List<SurahMetadataModel> surahs;
  final Function(SurahMetadataModel surah)? onCardTab;
  final Function(SurahMetadataModel surah)? onPlayButtonTap;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: surahs.length,
      physics: const BouncingScrollPhysics(),
      separatorBuilder: (context, index) => const Gap(8.0),
      itemBuilder: (context, index) {
        return SurahCard(
          surah: surahs[index],
          onCardTab: onCardTab != null
              ? () {
                  onCardTab!(surahs[index]);
                }
              : () {},
          onPlayButtonTap: onPlayButtonTap != null
              ? () {
                  onPlayButtonTap!(surahs[index]);
                }
              : () {},
        );
      },
    );
  }
}
