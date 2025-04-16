import 'package:drift_note_taking_app/blocs/notes_list_page/bloc/notes_list_page_bloc.dart';
import 'package:drift_note_taking_app/core/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NoteCreationBtn extends StatelessWidget {
  const NoteCreationBtn(this.isAudio, {super.key});

  final bool isAudio;
  @override
  Widget build(BuildContext context) {
    final areFabsCollapsed =
        context.select((NotesListPageBloc bloc) => bloc.state.areFabsCollapsed);
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: isAudio ? Colors.red.shade900 : kAccentCorlor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          padding: areFabsCollapsed
              ? const EdgeInsets.all(8)
              : const EdgeInsets.symmetric(horizontal: 20, vertical: 5)),
      onPressed: () {},
      label: AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: areFabsCollapsed
              ? const SizedBox.shrink()
              : Text(isAudio ? "Record" : "Write something")),
      icon: Icon(isAudio ? Icons.mic : Icons.edit_note),
    );
  }
}
