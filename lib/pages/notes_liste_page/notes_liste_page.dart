import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:drift_note_taking_app/blocs/notes_list_page/bloc/notes_list_page_bloc.dart';
import 'package:drift_note_taking_app/core/app_constants.dart';
import 'package:drift_note_taking_app/core/functions/debug_print.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/categories.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/creation_btn.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/notes_view_by_category.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/search_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:drift_note_taking_app/core/core_ui/default_page_padding.widget.dart';
import 'package:drift_note_taking_app/core/core_ui/spacers.dart';
import 'package:flutter/material.dart';

class NotesListPage extends StatelessWidget {
  const NotesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NotesListPageBloc(context)..add(NotesListPageEventLoadCategories()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Vspace(10),
                _PageTitle(),
                NoteListPageSearchBar(),
                NotesListPageCategories(),
                Vspace(10),
                Expanded(child: _PageViews()),
              ],
            ),
          ),
          floatingActionButton: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              NoteCreationBtn(true),
              Vspace(10),
              NoteCreationBtn(false),
            ],
          ),
        );
      }),
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle();

  @override
  Widget build(BuildContext context) {
    return DefaultPagePadding(
      child: Row(
        children: [
          const Text(
            "My Notes",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          // Button to swhitch to dark mode or light mode
          _ThemeSwitchBtn(),
        ],
      ),
    );
  }
}

class _ThemeSwitchBtn extends StatelessWidget {
  const _ThemeSwitchBtn();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
        builder: (_, mode, child) {
          printIfDebug("mode : $mode");
          final isDarkModeOn = mode == AdaptiveThemeMode.dark;
          final theme = isDarkModeOn ? ThemeData.dark() : ThemeData.light();
          return IconButton(
            icon: Icon(
              Icons.dark_mode,
              color: theme.brightness == Brightness.light
                  ? Colors.black
                  : Colors.white,
            ),
            onPressed: () {
              AdaptiveTheme.of(context).toggleThemeMode(useSystem: false);
            },
          );
        });
  }
}

class _PageViews extends StatelessWidget {
  const _PageViews();

  @override
  Widget build(BuildContext context) {
    final categories =
        context.select((NotesListPageBloc bloc) => bloc.state.categories);
    final bloc = context.read<NotesListPageBloc>();
    return PageView(
      controller: bloc.pageController,
      onPageChanged: (value) => bloc.add(NotesListPageEventChangePage(value)),
      children: [
        NotesViewByCategory(category: null),
        ...categories.map((category) => NotesViewByCategory(category: category))
      ],
    );
  }
}
