import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:rick_and_morty_with_freezed_app/bloc/character_bloc.dart';
import 'package:rick_and_morty_with_freezed_app/ui/widgets/custom_list_tile.dart';

import '../../data/models/character.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late Character _currentCharacter;
  List<Results> _currentResults = [];
  int _currentPage = 1;
  String _currentSearchStr = '';

  final refreshController = RefreshController();
  bool _isPagination = false;

  late Timer searchDebounce;

  final _storage = HydratedBloc.storage;

  @override
  void initState() {
    if (_storage.runtimeType.toString().isEmpty) {
      if (_currentResults.isEmpty) {
        context
            .read<CharacterBloc>()
            .add(const CharacterEvent.fetch(name: '', page: 1));
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CharacterBloc>().state;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 15, bottom: 15, left: 16, right: 16),
          child: TextField(
            style: const TextStyle(color: Colors.white),
            cursorColor: Colors.white,
            decoration: InputDecoration(
              filled: true,
              fillColor: const Color.fromRGBO(86, 85, 86, 0.8),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Search Name',
              hintStyle: const TextStyle(color: Colors.white),
            ),
            onChanged: (value) {
              _currentPage = 1;
              _currentResults = [];
              _currentSearchStr = value;
              searchDebounce.cancel();
              searchDebounce = Timer(const Duration(milliseconds: 500), () {
                context
                    .read<CharacterBloc>()
                    .add(CharacterEvent.fetch(name: value, page: _currentPage));
              });
            },
          ),
        ),
        Expanded(
          child: state.when(
            loading: () {
              if (!_isPagination) {
                return const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        strokeWidth: 2,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Loading...'),
                    ],
                  ),
                );
              } else {
                return _customListView(_currentResults);
              }
            },
            loaded: (characterLoaded) {
              _currentCharacter = characterLoaded;
              if (_isPagination) {
                _currentResults.addAll(_currentCharacter.results);
                refreshController.loadComplete();
                _isPagination = false;
              } else {
                _currentResults = _currentCharacter.results;
              }
              return _currentResults.isNotEmpty
                  ? _customListView(_currentResults)
                  : const SizedBox();
            },
            error: () => const Text('Nothing found...'),
          ),
        ),
      ],
    );
  }

  Widget _customListView(List<Results> currentResults) {
    return SmartRefresher(
      controller: refreshController,
      enablePullUp: true,
      enablePullDown: false,
      onLoading: () {
        _isPagination = true;
        _currentPage++;
        if (_currentPage <= _currentCharacter.info.pages) {
          context.read<CharacterBloc>().add(CharacterEvent.fetch(
              name: _currentSearchStr, page: _currentPage));
        } else {
          refreshController.loadNoData();
        }
      },
      child: ListView.separated(
        itemBuilder: (context, index) {
          final result = currentResults[index];
          return Padding(
            padding:
                const EdgeInsets.only(right: 16, left: 16, top: 3, bottom: 3),
            child: CustomListTile(result: result),
          );
        },
        separatorBuilder: (_, index) => const SizedBox(
          height: 5,
        ),
        itemCount: currentResults.length,
        shrinkWrap: true,
      ),
    );
  }
}
