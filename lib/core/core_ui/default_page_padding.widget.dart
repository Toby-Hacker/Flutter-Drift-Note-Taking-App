import 'package:drift_note_taking_app/core/app_constants.dart';
import 'package:flutter/material.dart';

class DefaultPagePadding extends StatelessWidget {
  const DefaultPagePadding({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultHorizontalPadding),
      child: child,
    );
  }
}
