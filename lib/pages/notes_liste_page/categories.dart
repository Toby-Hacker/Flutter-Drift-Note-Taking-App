import 'package:drift_note_taking_app/blocs/notes_list_page/bloc/notes_list_page_bloc.dart';
import 'package:drift_note_taking_app/core/app_constants.dart';
import 'package:drift_note_taking_app/data/ui_models/note_category.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

class NotesListPageCategories extends StatelessWidget {
  const NotesListPageCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categories =
        context.select((NotesListPageBloc bloc) => bloc.state.categories);
    return SizedBox(
      height: 50,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length + 1,
        itemBuilder: (context, index) {
          final category = index == 0 ? null : categories[index - 1];
          return Padding(
            padding: const EdgeInsets.only(right: kDefaultHorizontalPadding),
            child: _CategoryChip(category),
          );
        },
      ),
    );
  }
}

class _CategoryChip extends StatefulWidget {
  const _CategoryChip(this.category);

  final NoteCategory? category;

  @override
  State<_CategoryChip> createState() => _CategoryChipState();
}

class _CategoryChipState extends State<_CategoryChip> {
  late GlobalKey chipkey;

  @override
  void initState() {
    super.initState();
    chipkey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    final selectedCategory =
        context.select((NotesListPageBloc bloc) => bloc.state.selectedCategory);
    final active = widget.category == selectedCategory;
    return BlocListener<NotesListPageBloc, NotesListPageState>(
      listenWhen: (previous, current) =>
          previous.selectedCategory != current.selectedCategory,
      listener: (context, state) {
        if (state.selectedCategory == widget.category) {
          Scrollable.ensureVisible(chipkey.currentContext!,
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut);
        }
      },
      child: FilterChip(
        key: chipkey,
        selected: active,
        selectedColor: kAccentCorlor,
        showCheckmark: false,
        onSelected: (value) => context
            .read<NotesListPageBloc>()
            .add(NotesListPageEventCategoryChange(widget.category)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        label: Text(widget.category?.label ?? "All",
            style: TextStyle(color: active ? Colors.white : Colors.black54)),
      ),
    );
  }
}
