import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty_with_freezed_app/bloc/character_bloc.dart';
import 'package:rick_and_morty_with_freezed_app/data/repository/character_repo.dart';

import 'search_page.dart';

class HomePage extends StatelessWidget {
  final String title;
  final repository = CharacterRepo();

  HomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: repository),
        child: Container(
            decoration: const BoxDecoration(color: Colors.black87),
            child: const SearchPage()),
      ),
    );
  }
}
