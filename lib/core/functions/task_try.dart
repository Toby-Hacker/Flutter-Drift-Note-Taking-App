import 'dart:ui';

import 'package:drift_note_taking_app/core/functions/debug_print.dart';

class TryCatch {
  final Function toTry;
  final VoidCallback? onError;
  final bool toastOnError;
  final String errorToastText;
  TryCatch(
      {required this.toTry,
      this.onError,
      this.toastOnError = false,
      this.errorToastText = "Erreur de connexion"});
  execute() {
    try {
      toTry();
    } catch (e, s) {
      if (onError != null) onError!();
      printIfDebug(e);
      printIfDebug(s);
    }
  }

  Future<void> executeAsync() async {
    try {
      await toTry();
    } catch (e, s) {
      if (onError != null) onError!();
      printIfDebug(e);
      printIfDebug(s);
      if (toastOnError && errorToastText.isNotEmpty) {
        // showToast(errorToastText);
        printIfDebug("errorToastText : $errorToastText");
      }
    }
  }
}
