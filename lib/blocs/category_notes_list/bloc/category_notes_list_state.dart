part of 'category_notes_list_bloc.dart';

class CategoryNotesListState extends Equatable {
  final bool isLoading;
  final List<NoteModel> notes;
  final bool areFabsCollapsed;

  const CategoryNotesListState({
    required this.isLoading,
    required this.notes,
    this.areFabsCollapsed = false,
  });

  CategoryNotesListState copyWith({
    bool? isLoading,
    List<NoteModel>? notes,
    bool? areFabsCollapsed,
  }) {
    return CategoryNotesListState(
      isLoading: isLoading ?? this.isLoading,
      notes: notes ?? this.notes,
      areFabsCollapsed: areFabsCollapsed ?? this.areFabsCollapsed,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        notes,
        areFabsCollapsed,
      ];
}
