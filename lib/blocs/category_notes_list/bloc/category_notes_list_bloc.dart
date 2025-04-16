import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:drift_note_taking_app/core/functions/task_try.dart';
import 'package:drift_note_taking_app/data/ui_models/note.model.dart';
import 'package:drift_note_taking_app/data/ui_models/note_category.model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

part 'category_notes_list_event.dart';
part 'category_notes_list_state.dart';

class CategoryNotesListBloc
    extends Bloc<CategoryNotesListEvent, CategoryNotesListState> {
  CategoryNotesListBloc(this.pageContext, this.category)
      : super(const CategoryNotesListState(
          isLoading: false,
          notes: [],
        )) {
    on<CategoryNotesListEventLoad>(_onCategoryNotesListEventLoad);
    on<CategoryNotesListEventToogleCollapseFabs>(
        _onCategoryNotesListEventToogleCollapseFabs);
  }

  final BuildContext pageContext;
  final NoteCategory? category;

  final ScrollController scrollController = ScrollController();

  void addScrollListener() {
    scrollController.addListener(() => add(CategoryNotesListEventToogleCollapseFabs(
        scrollController.position.userScrollDirection)));
  }

  FutureOr<void> _onCategoryNotesListEventLoad(CategoryNotesListEventLoad event,
      Emitter<CategoryNotesListState> emit) async {
    emit(state.copyWith(isLoading: true));
    await TryCatch(toTry: () async {
      emit(state.copyWith(
        notes: NoteModel.dummyNotes
            .where((n) => n.category?.id == category?.id)
            .toList(),
      ));
    }).executeAsync();
    emit(state.copyWith(isLoading: false));
  }

  FutureOr<void> _onCategoryNotesListEventToogleCollapseFabs(
      CategoryNotesListEventToogleCollapseFabs event,
      Emitter<CategoryNotesListState> emit) {
    final shouldCollapse = event.direction == ScrollDirection.reverse;
    emit(state.copyWith(areFabsCollapsed: shouldCollapse));
  }
}
