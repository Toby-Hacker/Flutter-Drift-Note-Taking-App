import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:drift_note_taking_app/core/app_constants.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/notes_liste_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:permission_handler/permission_handler.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await requestPermission(Permission.manageExternalStorage);
  runApp(const MyApp());
}

Future<bool> requestPermission(Permission permission) async {
  if (await permission.isGranted) {
    return true;
  } else {
    var result = await permission.request();
    if (result == PermissionStatus.granted) {
      return true;
    }
  }
  return false;
}

void resetAppSystemUIOverlayStyle(BuildContext context) {
  final colorr = Theme.of(context).scaffoldBackgroundColor;
  final isDarkModeOn = AdaptiveTheme.of(context).mode == AdaptiveThemeMode.dark;
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarBrightness: isDarkModeOn ? Brightness.dark : Brightness.light,
    statusBarColor: colorr,
    statusBarIconBrightness: isDarkModeOn ? Brightness.light : Brightness.dark,

    // systemStatusBarContrastEnforced: true,
    // systemNavigationBarContrastEnforced: true,
    systemNavigationBarColor: colorr,
    systemNavigationBarDividerColor: colorr,
    systemNavigationBarIconBrightness:
        isDarkModeOn ? Brightness.light : Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
        light: ThemeData.light(useMaterial3: false).copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: kAccentCorlor),
        ),
        dark: ThemeData.dark(useMaterial3: false).copyWith(
          colorScheme: ColorScheme.fromSeed(seedColor: kAccentCorlor),
        ),
        initial: AdaptiveThemeMode.light,
        builder: (theme, darkTheme) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme,
            darkTheme: darkTheme,
            // home: MailAuthPage(
            //   args: MailAuthPageArgs(isViaMail: false, isRegisterPage: true),
            // ),
            // home: const TextNoteCreationPage(),
            home: Builder(builder: (context) {
              resetAppSystemUIOverlayStyle(context);
              return ValueListenableBuilder(
                  valueListenable: AdaptiveTheme.of(context).modeChangeNotifier,
                  builder: (_, mode, child) {
                    resetAppSystemUIOverlayStyle(_);
                    return const NotesListPage();
                  });
            }),
          );
        });
  }
}
