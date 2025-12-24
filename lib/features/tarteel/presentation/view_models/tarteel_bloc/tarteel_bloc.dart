import 'package:bloc/bloc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:noor/core/error_handling/failure.dart';
import 'package:noor/features/tarteel/data/models/surah_metadata_model/surah_metadata_model.dart';
import 'package:noor/features/tarteel/data/repos/quran_repo.dart';

part 'tarteel_event.dart';
part 'tarteel_state.dart';
part 'tarteel_bloc.freezed.dart';

class TarteelBloc extends Bloc<TarteelEvent, TarteelState> {
  final QuranRepo _quranRepo;

  List<SurahMetadataModel>? _surahs = [];

  final TextEditingController _searchController = TextEditingController();

  TextEditingController get searchController => _searchController;

  TarteelBloc(this._quranRepo) : super(const _Initial()) {
    /// handles getting the full list of surahs
    /// emits loading, success, and failure states
    /// stores the full list of surahs in [_surahs] for searching later
    on<GetQuran>((event, emit) async {
      emit(const TarteelState.getQuranLoading());
      final result = await _quranRepo.getQuran();
      return result.fold(
        (failure) {
          emit(TarteelState.getQuranfailed(failure: failure));
        },
        (surahs) {
          _surahs = surahs;
          emit(TarteelState.getQuranSuccess(surahs: surahs));
        },
      );
    });

    /// if the surahs list is null, do nothing
    /// if the query is empty, return all surahs
    /// if the query is only numbers, filter by id
    /// else filter by name and transliteration
    /// emit [getQuranSuccess] with the filtered list
    on<Search>((event, emit) {
      if (_surahs == null) return;
      final String formattedQuery = _searchController.text.trim().toLowerCase();
      if (formattedQuery.isEmpty) {
        emit(TarteelState.getQuranSuccess(surahs: _surahs!));
        return;
      }

      List<SurahMetadataModel> filteredSurahs = [];
      if (int.tryParse(formattedQuery) != null) {
        filteredSurahs.addAll(
          _surahs!.where((surah) => surah.id == int.parse(formattedQuery)),
        );
        emit(TarteelState.getQuranSuccess(surahs: filteredSurahs));
        return;
      } else {
        filteredSurahs.addAll(
          _surahs!.where(
            (surah) =>
                surah.name.toLowerCase().contains(formattedQuery) ||
                surah.transliteration.toLowerCase().contains(formattedQuery),
          ),
        );
        emit(TarteelState.getQuranSuccess(surahs: filteredSurahs));
        return;
      }
    });

    on<ClearSearch>((event, emit) {
      _searchController.clear();
      add(const Search());
    });
  }
}
