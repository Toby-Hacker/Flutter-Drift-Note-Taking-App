  import 'dart:io';

import 'package:drift_note_taking_app/core/functions/task_try.dart';
import 'package:path_provider/path_provider.dart';

Future<String?> getDownloadPath() async {
    Directory? directory;
    await TryCatch(toTry: () async {
      if (Platform.isIOS) {
        directory = await getApplicationDocumentsDirectory();
      } else {
        directory = Directory('/storage/emulated/0/Download');
        // Put file in global download folder, if for an unknown reason it didn't exist, we fallback
        // ignore: avoid_slow_async_io
        if (!await directory!.exists()) {
          directory = await getExternalStorageDirectory();
        }
      }
    }).executeAsync();
    return directory?.path;
  }
