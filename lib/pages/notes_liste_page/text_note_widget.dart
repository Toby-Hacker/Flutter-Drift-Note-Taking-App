import 'package:drift_note_taking_app/blocs/note_widget/bloc/note_widget_bloc.dart';
import 'package:drift_note_taking_app/core/core_ui/spacers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class TextNoteCard extends StatelessWidget {
  const TextNoteCard({super.key});
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<NoteWidgetBloc>();
    final note = bloc.note;
    return NoteCard(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (note.hasImage)
            Column(
              children: [
                Image.asset(
                  "assets/${note.imageFilePath}.jpg",
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const Vspace(10),
              ],
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              note.content,
              maxLines: 5,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.grey, fontSize: 16),
            ),
          )
        ],
      ),
    );
  }
}

class NoteCard extends StatelessWidget {
  const NoteCard({super.key, required this.content});
  final Widget content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Card(
        elevation: 5,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const NoteCardTitleAndOptions(),
              const Vspace(20),
              content,
            ],
          ),
        ),
      ),
    );
  }
}

class NoteCardTitleAndOptions extends StatelessWidget {
  const NoteCardTitleAndOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final note = context.select((NoteWidgetBloc bloc) => bloc.note);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const _IconBtn(CupertinoIcons.bell, Colors.green, isCircle: true),
          const Hspace(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  note.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const Vspace(5),
                Text(DateFormat('d MMM y, hh:mm a').format(note.createdAt),
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 10))
              ],
            ),
          ),
          const Hspace(10),
          _IconBtn(
            CupertinoIcons.pencil,
            Colors.amber,
            onTap: () {},
          ),
          const Hspace(10),
          _IconBtn(
            CupertinoIcons.trash,
            Colors.red,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _IconBtn extends StatelessWidget {
  const _IconBtn(this.iconData, this.color,
      {this.isCircle = false, this.onTap});
  final IconData iconData;
  final Color? color;
  final bool isCircle;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(isCircle ? 10 : 5),
      decoration: BoxDecoration(
          color: color,
          shape: isCircle ? BoxShape.circle : BoxShape.rectangle,
          borderRadius: isCircle ? null : BorderRadius.circular(5)),
      child: Icon(
        iconData,
        color: Colors.white,
        size: isCircle ? 20 : 15,
      ),
    );
  }
}
