part of 'notes_list_page_bloc.dart';

class NotesListPageState extends Equatable { 
  final List<NoteCategory> categories;
  final NoteCategory? selectedCategory;
  final bool isLoadingCategories;
  final bool areFabsCollapsed;
  const NotesListPageState({
    required this.categories,
    required this.selectedCategory,
    required this.isLoadingCategories,
    this.areFabsCollapsed = false,
  });

  NotesListPageState copyWith({
    List<NoteCategory>? categories,
    NoteCategory? selectedCategory,
    bool isAllCategories = false,
    bool? isLoadingCategories,
    bool? areFabsCollapsed,
  }) {
    return NotesListPageState(
      categories: categories ?? this.categories,
      selectedCategory:
          isAllCategories ? null : selectedCategory ?? this.selectedCategory,
      isLoadingCategories: isLoadingCategories ?? this.isLoadingCategories,
      areFabsCollapsed: areFabsCollapsed ?? this.areFabsCollapsed,
    );
  }

  @override
  List<Object?> get props => [
        categories,
        selectedCategory,
        isLoadingCategories,
        areFabsCollapsed,
      ];
}
