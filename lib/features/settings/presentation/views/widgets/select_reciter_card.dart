import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:noor/core/theme/app_colors.dart';
import 'package:noor/core/theme/app_text_styles.dart';
import 'package:noor/core/ui/ui_helpers/ui_helper_functions.dart';
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
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 16.h),
            child: Row(
              children: [
                const DecoratedIcon(icon: Icons.mic_none_outlined),
                Gap(16.w),
                Expanded(
                  child: Text(
                    '${AppLocalizations.of(context)?.pickReciter}',
                    style: AppTextStyles.font16_20SemiBold(context).copyWith(
                      color: AppColors.primary500,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: HelperFunctions.screenWidth(context) * 0.6,
                  ),

                  child: DropdownMenu(
                    requestFocusOnTap: true,
                    enableFilter: true,
                    label: Text(
                      '${localeName == 'ar' ? recitersCubit.currentReciter?.nameAr : recitersCubit.currentReciter?.nameEn}',
                      style: AppTextStyles.font14_18GreenRegular(context),
                    ),
                    trailingIcon: const Icon(
                      Icons.expand_more,
                      color: AppColors.lightGrey,
                    ),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
