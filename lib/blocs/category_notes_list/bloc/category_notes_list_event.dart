part of 'category_notes_list_bloc.dart';

sealed class CategoryNotesListEvent {
  const CategoryNotesListEvent();
}

class CategoryNotesListEventLoad extends CategoryNotesListEvent {
  const CategoryNotesListEventLoad();
}

class CategoryNotesListEventToogleCollapseFabs extends CategoryNotesListEvent {
  const CategoryNotesListEventToogleCollapseFabs(this.direction);
  final ScrollDirection direction;
}
