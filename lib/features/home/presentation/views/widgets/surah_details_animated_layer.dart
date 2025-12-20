// import 'package:flutter/material.dart';
// import 'package:noor/features/home/presentation/views/surah_details_view.dart';

// class SurahDetailsAnimatedLayer extends StatefulWidget {
//   const SurahDetailsAnimatedLayer({super.key});

//   @override
//   State<SurahDetailsAnimatedLayer> createState() =>
//       _SurahDetailsAnimatedLayerState();
// }

// class _SurahDetailsAnimatedLayerState extends State<SurahDetailsAnimatedLayer>
//     with SingleTickerProviderStateMixin {
//   late final Animation<Offset> _animation;
//   late final AnimationController _animationController;

//   @override
//   void initState() {
//     super.initState();

//     _animationController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 250),
//     );
//     _animation = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero)
//         .animate(
//           CurvedAnimation(
//             parent: _animationController,
//             curve: Curves.easeInOut,
//           ),
//         );
//   }

//   @override
//   void dispose() {
//     _animationController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SlideTransition(
//       position: _animation,
//       child: SurahDetailsView(
//         onCloseSurahDetails: () {
//           //TODO: close bottom sheet
//         },
//       ),
//     );
//   }
// }
