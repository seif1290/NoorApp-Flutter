import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/widgets/decorated_icon.dart';
import 'package:noor/features/settings/presentation/view_models/settings_cubit/reciters_cubit.dart';
import 'package:noor/localization/l10n/app_localizations.dart';

class SelectReciterCard extends StatelessWidget {
  const SelectReciterCard({super.key});

  @override
  Widget build(BuildContext context) {
    final recitersCubit = BlocProvider.of<RecitersCubit>(context);
    final localeName = AppLocalizations.of(context)?.localeName;
    return BlocBuilder<RecitersCubit, RecitersState>(
      buildWhen: (previous, current) => previous != current,
      builder: (context, state) {
        return Card(
          child: ListTile(
            leading: const DecoratedIcon(icon: Icons.mic_none_outlined),
            title: Text(
              '${AppLocalizations.of(context)?.pickReciter}',
              style: AppTextStyles.font16_20SemiBold(
                context,
              ).copyWith(color: AppColors.primary, fontWeight: FontWeight.w500),
              overflow: TextOverflow.ellipsis,
            ),
            trailing: DropdownMenu(
              requestFocusOnTap: true,
              inputDecorationTheme: const InputDecorationTheme(
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
              ),
              label: Text(
                '${localeName == 'ar' ? recitersCubit.currentReciter?.nameAr : recitersCubit.currentReciter?.nameEn}',
                style: AppTextStyles.font14_18GreenRegular(context),
                overflow: TextOverflow.ellipsis,
              ),
              trailingIcon: const Icon(
                Icons.expand_more,
                color: AppColors.lightGrey,
              ),
              enableFilter: true,
              onSelected: (identifier) async {
                await recitersCubit.selectReciter(
                  reciterIdentifier: identifier,
                );
              },
              dropdownMenuEntries: recitersCubit.reciters != null
                  ? recitersCubit.reciters!
                        .map(
                          (reciter) => DropdownMenuEntry<String>(
                            value: reciter.identifier,
                            label: localeName == 'ar'
                                ? reciter.nameAr
                                : reciter.nameEn,
                          ),
                        )
                        .toList()
                  : <DropdownMenuEntry<String>>[],
            ),
          ),
        );
      },
    );
  }
}
