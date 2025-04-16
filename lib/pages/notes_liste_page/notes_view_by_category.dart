import 'package:drift_note_taking_app/blocs/category_notes_list/bloc/category_notes_list_bloc.dart';
import 'package:drift_note_taking_app/blocs/note_widget/bloc/note_widget_bloc.dart';
import 'package:drift_note_taking_app/blocs/notes_list_page/bloc/notes_list_page_bloc.dart';
import 'package:drift_note_taking_app/core/core_ui/default_page_padding.widget.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/audio_note_widget.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/text_note_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:drift_note_taking_app/data/ui_models/note_category.model.dart';
import 'package:flutter/material.dart';

class NotesViewByCategory extends StatefulWidget {
  const NotesViewByCategory({super.key, required this.category});
  final NoteCategory? category;

  @override
  State<NotesViewByCategory> createState() => _NotesViewByCategoryState();
}

class _NotesViewByCategoryState extends State<NotesViewByCategory>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultPagePadding(
      child: BlocProvider(
        create: (context) => CategoryNotesListBloc(context, widget.category)
          ..addScrollListener()
          ..add(const CategoryNotesListEventLoad()),
        child: Builder(builder: (context) {
          final notes =
              context.select((CategoryNotesListBloc bloc) => bloc.state.notes);
          final bloc = context.read<CategoryNotesListBloc>();
          return BlocListener<CategoryNotesListBloc, CategoryNotesListState>(
            listener: (context, state) => context.read<NotesListPageBloc>().add(
                NotesListPageEventToogleCollapseFabs(state.areFabsCollapsed)),
            listenWhen: (previous, current) =>
                previous.areFabsCollapsed != current.areFabsCollapsed,
            child: ListView.builder(
                cacheExtent: 9999,
                controller: bloc.scrollController,
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  final note = notes[index];
                  return BlocProvider(
                    create: (context) => NoteWidgetBloc(context, note),
                    child: note.isAudio
                        ? const AudioNoteCard()
                        : const TextNoteCard(),
                  );
                }),
          );
        }),
      ),
    );
  }
}
