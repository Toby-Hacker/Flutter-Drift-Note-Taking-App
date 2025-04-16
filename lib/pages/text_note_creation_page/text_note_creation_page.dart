// import 'package:flutter/material.dart';
// import 'package:flutter_quill/flutter_quill.dart';

// class TextNoteCreationPage extends StatefulWidget {
//   const TextNoteCreationPage({super.key});

//   @override
//   State<TextNoteCreationPage> createState() => _TextNoteCreationPageState();
// }

// class _TextNoteCreationPageState extends State<TextNoteCreationPage> {
//   QuillController _controller = QuillController.basic();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         QuillSimpleToolbar(
//           controller: _controller,
//           config: const QuillSimpleToolbarConfig(),
//         ),
//         Expanded(
//           child: QuillEditor.basic(
//             controller: _controller,
//             config: const QuillEditorConfig(),
//           ),
//         ),
//       ],
//     ));
//   }
// }
