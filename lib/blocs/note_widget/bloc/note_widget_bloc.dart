import 'package:bloc/bloc.dart';
import 'package:drift_note_taking_app/data/ui_models/note.model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'note_widget_event.dart';
part 'note_widget_state.dart';

class NoteWidgetBloc extends Bloc<NoteWidgetEvent, NoteWidgetState> {
  NoteWidgetBloc(this.pageContext, this.note) : super(NoteWidgetState()) {
    // on<NoteWidgetEvent>((event, emit) {});
  }
  final BuildContext pageContext;
  final NoteModel note;
}
