import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:noor/core/di/setup.dart';
import 'package:noor/core/utils/custom_icons.dart';
import 'package:noor/features/settings/data/repos/reciters_repo.dart';
import 'package:noor/features/settings/presentation/views/settings_view.dart';
import 'package:noor/features/tarteel/data/repos/audio_repo.dart';
import 'package:noor/features/tarteel/data/repos/quran_repo.dart';
import 'package:noor/features/tarteel/domain/use_cases/load_surah_with_audio_use_case.dart';
import 'package:noor/features/tarteel/presentation/view_models/audio_player_cubit/audio_player_cubit.dart';
import 'package:noor/features/tarteel/presentation/view_models/tarteel_bloc/tarteel_bloc.dart';
import 'package:noor/features/tarteel/presentation/views/tarteel_view.dart';

class PrimaryScaffold extends StatefulWidget {
  const PrimaryScaffold({super.key});

  @override
  State<PrimaryScaffold> createState() => _PrimaryScaffoldState();
}

class _PrimaryScaffoldState extends State<PrimaryScaffold> {
  int _selectedIndex = 0;

  late PageController _pageController;

  @override
  void initState() {
    super.initState();

    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _buildBottomNavBar(),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => TarteelBloc(getIt.get<QuranRepo>()),
              ),
              BlocProvider(
                create: (context) => AudioPlayerCubit(
                  audioRepo: getIt.get<AudioRepo>(),
                  recitersRepo: getIt.get<RecitersRepo>(),
                  loadSurahWithAudioUseCase: getIt
                      .get<LoadSurahWithAudioUseCase>(),
                ),
              ),
            ],
            child: const TarteelView(),
          ),
          const SettingsView(),
          const SettingsView(),
          const SettingsView(),
        ],
      ),
    );
  }

  final List<IconData> _icons = const [
    Icons.headphones_outlined,
    CustomIcons.quran_01,
    CustomIcons.tasbih,
    Icons.favorite_outline,
  ];

  Widget _buildBottomNavBar() {
    return BottomNavigationBar(
      iconSize: 32.h,
      items: _icons
          .map((icon) => _buildBottonNavItem(context, icon: icon))
          .toList(),
      currentIndex: _selectedIndex,
      onTap: (selectedIndex) {
        setState(() {
          _selectedIndex = selectedIndex;
          _pageController.jumpToPage(selectedIndex);
        });
      },
    );
  }

  BottomNavigationBarItem _buildBottonNavItem(
    BuildContext context, {
    required IconData icon,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: '',
      activeIcon: Container(
        width: 56.h,
        height: 56.h,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Icon(icon),
      ),
    );
  }
}
