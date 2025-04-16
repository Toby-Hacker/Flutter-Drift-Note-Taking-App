part of 'notes_list_page_bloc.dart';

sealed class NotesListPageEvent {
  const NotesListPageEvent();
}

class NotesListPageEventLoadCategories extends NotesListPageEvent {
  const NotesListPageEventLoadCategories();
}

class NotesListPageEventSelectCategories extends NotesListPageEvent {
  const NotesListPageEventSelectCategories();
}

class NotesListPageEventLoadNotes extends NotesListPageEvent {
  const NotesListPageEventLoadNotes();
}

class NotesListPageEventChangePage extends NotesListPageEvent {
  const NotesListPageEventChangePage(this.pageIndex);
  final int pageIndex;
}

class NotesListPageEventCategoryChange extends NotesListPageEvent {
  const NotesListPageEventCategoryChange(this.category);
  final NoteCategory? category;
}

class NotesListPageEventToogleCollapseFabs extends NotesListPageEvent {
  const NotesListPageEventToogleCollapseFabs(this.value);
  final bool value;
}
