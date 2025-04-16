import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:drift_note_taking_app/core/functions/task_try.dart';
import 'package:drift_note_taking_app/data/dummy_data.dart';
import 'package:drift_note_taking_app/data/ui_models/note_category.model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'notes_list_page_event.dart';
part 'notes_list_page_state.dart';

class NotesListPageBloc extends Bloc<NotesListPageEvent, NotesListPageState> {
  NotesListPageBloc(this.pageContext)
      : super(const NotesListPageState(
          categories: [],
          selectedCategory: null,
          isLoadingCategories: true,
        )) {
    on<NotesListPageEventLoadCategories>(_onNotesListPageEventLoadCategories);
    on<NotesListPageEventChangePage>(_onNotesListPageEventChangePage);
    on<NotesListPageEventCategoryChange>(_onNotesListPageEventCategoryChange);
    on<NotesListPageEventToogleCollapseFabs>(
        _onNotesListPageEventToogleCollapseFabs);
  }

  final BuildContext pageContext;
  final PageController pageController = PageController();

  FutureOr<void> _onNotesListPageEventLoadCategories(
      NotesListPageEvent event, Emitter<NotesListPageState> emit) async {
    emit(state.copyWith(isLoadingCategories: true));
    await TryCatch(toTry: () async {
      emit(state.copyWith(categories: dummyNotesCategories));
      // AssetsAudioPlayer().open(
      //   Audio("assets/random-ai-speech.wav"),
      // );
    }).executeAsync();
    emit(state.copyWith(isLoadingCategories: false));
  }

  FutureOr<void> _onNotesListPageEventChangePage(
      NotesListPageEventChangePage event,
      Emitter<NotesListPageState> emit) async {
    final categoryIndex = event.pageIndex == 0 ? null : event.pageIndex - 1;
    emit(state.copyWith(
      selectedCategory:
          categoryIndex == null ? null : state.categories[categoryIndex],
      isAllCategories: categoryIndex == null,
    ));
  }

  FutureOr<void> _onNotesListPageEventCategoryChange(
      NotesListPageEventCategoryChange event,
      Emitter<NotesListPageState> emit) {
    emit(state.copyWith(
        selectedCategory: event.category,
        isAllCategories: event.category == null));
    pageController.jumpToPage(event.category == null
        ? 0
        : state.categories.indexOf(event.category!) + 1);
  }

  FutureOr<void> _onNotesListPageEventToogleCollapseFabs(
      NotesListPageEventToogleCollapseFabs event,
      Emitter<NotesListPageState> emit) {
    emit(state.copyWith(areFabsCollapsed: event.value));
  }
}
