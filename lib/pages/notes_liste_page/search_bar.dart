import 'package:drift_note_taking_app/core/app_constants.dart';
import 'package:flutter/material.dart';

class NoteListPageSearchBar extends StatelessWidget {
  const NoteListPageSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultHorizontalPadding, vertical: 15),
      child: SizedBox(
        // height: 40,
        child: TextFormField(
          // on tap outside loose focus
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            // border depends on theme
            border: _border(context),
            focusedBorder: _border(context),
            enabledBorder: _border(context),
            contentPadding: const EdgeInsets.symmetric(),
            hintText: "Search for notes",
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _border(BuildContext context) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(100),
      borderSide:
          BorderSide(color: Theme.of(context).colorScheme.onPrimary, width: 1),
    );
  }
}
