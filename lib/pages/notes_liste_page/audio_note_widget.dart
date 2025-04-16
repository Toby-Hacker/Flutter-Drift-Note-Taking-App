import 'package:audioplayers/audioplayers.dart';
import 'package:drift_note_taking_app/blocs/note_widget/bloc/note_widget_bloc.dart';
import 'package:drift_note_taking_app/core/app_constants.dart';
import 'package:drift_note_taking_app/core/functions/debug_print.dart';
import 'package:drift_note_taking_app/pages/notes_liste_page/text_note_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:waved_audio_player/waved_audio_player.dart';

class AudioNoteCard extends StatelessWidget {
  const AudioNoteCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const NoteCard(content: _Player());
  }
}

class _Player extends StatelessWidget {
  const _Player();
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NoteWidgetBloc>();
    return WavedAudioPlayer(
      source: DeviceFileSource(bloc.note.audioFilePath!),
      iconColor: Colors.white,
      iconBackgoundColor: kAccentCorlor,
      playedColor: kAccentCorlor,
      unplayedColor: Colors.grey,
      waveWidth: 250,
      barWidth: 2,
      buttonSize: 40,
      showTiming: true,
      onError: (error) {
        printIfDebug('Error occurred: $error.message');
      },
    );
  }
}
