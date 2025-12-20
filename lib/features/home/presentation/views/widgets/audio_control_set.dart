// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:noor/core/theme/app_colors.dart';
// import 'package:noor/features/home/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
// import 'package:noor/features/home/presentation/views/widgets/audio_slider.dart';
// import 'package:noor/localization/l10n/app_localizations.dart';

// class AudioControlSet extends StatelessWidget {
//   const AudioControlSet({
//     super.key,
//     required this.surahName,
//     this.onPlayButtonTap,
//     this.onGetNextSurah,
//     this.onGetPreviousSurah,
//   });
//   final String surahName;
//   final VoidCallback? onPlayButtonTap;
//   final VoidCallback? onGetNextSurah;
//   final VoidCallback? onGetPreviousSurah;
//   @override
//   Widget build(BuildContext context) {
//     return BlocListener<AudioPlayerCubit, AudioPlayerState>(
//       listener: (context, state) {
//         state.whenOrNull(
//           audioFinished: () async {
//             await context.read<AudioPlayerCubit>().getNextSurah();
//           },
//         );
//       },
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const Spacer(),
//           AudioSlider(surahName: surahName),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               IconButton(
//                 onPressed: onGetNextSurah,
//                 icon: Icon(
//                   Icons.skip_next_outlined,
//                   color: Theme.of(context).colorScheme.primaryContainer,
//                 ),
//               ),

//               InkWell(
//                 onTap: onPlayButtonTap,
//                 child: Container(
//                   padding: const EdgeInsets.all(14.0),
//                   margin: const EdgeInsets.all(14.0),
//                   decoration: BoxDecoration(
//                     shape: BoxShape.circle,
//                     color: Theme.of(context).colorScheme.primaryContainer,
//                   ),
//                   child: BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
//                     builder: (context, state) {
//                       return state.maybeMap(
//                         audioPlaying: (_) =>
//                             const Icon(Icons.pause, color: AppColors.white),

//                         orElse: () => const Icon(
//                           Icons.play_arrow,
//                           color: AppColors.white,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               IconButton(
//                 onPressed: onGetPreviousSurah,
//                 icon: Icon(
//                   Icons.skip_previous_outlined,
//                   color: Theme.of(context).colorScheme.primaryContainer,
//                 ),
//               ),
//             ],
//           ),
//           BlocBuilder<AudioPlayerCubit, AudioPlayerState>(
//             buildWhen: (previous, current) => current.maybeWhen(
//               reciterLoaded: (_) => true,
//               orElse: () => false,
//             ),
//             builder: (context, state) {
//               final reciterName =
//                   AppLocalizations.of(context)?.localeName == 'ar'
//                   ? context.read<AudioPlayerCubit>().currentReciter?.nameAr
//                   : context.read<AudioPlayerCubit>().currentReciter?.nameEn;
//               return Text(
//                 '$reciterName',
//                 style: Theme.of(context).textTheme.labelSmall,
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
