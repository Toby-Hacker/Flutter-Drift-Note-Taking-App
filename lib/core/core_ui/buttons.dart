// import 'package:flutter/material.dart';
// import 'package:spring_button/spring_button.dart';
// import 'package:drift_note_taking_app/core/app_constants.dart';

// class GobackBtnBar extends StatelessWidget {
//   const GobackBtnBar({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SpringWidget(
//       onTap: () => Navigator.pop(context),
//       child: Container(
//         padding: const EdgeInsets.fromLTRB(15, 15, 15, 15),
//         alignment: Alignment.centerLeft,
//         child: const Icon(
//           Icons.arrow_back_ios,
//           color: kSecondaryColor,
//         ),
//       ),
//     );
//   }
// }

// class SpringWidget extends StatelessWidget {
//   const SpringWidget(
//       {super.key, required this.child, this.onTap, this.animate = true});

//   final void Function()? onTap;
//   final Widget child;
//   final bool animate;

//   @override
//   Widget build(BuildContext context) {
//     return SpringButton(
//       SpringButtonType.OnlyScale,
//       child,
//       scaleCoefficient: animate ? 0.95 : 1,
//       useCache: false,
//       onTap: onTap,
//     );
//   }
// }

// class SpringTextButton extends StatelessWidget {
//   const SpringTextButton(
//       {super.key,
//       this.onTap,
//       required this.text,
//       this.borderRadius = 5,
//       this.color,
//       this.textColor = Colors.white,
//       this.inactiveColor,
//       this.inactiveTextColor,
//       this.onLoading = false,
//       this.expanded = false,
//       this.borderColor,
//       this.padding});

//   final void Function()? onTap;
//   final String text;
//   final double borderRadius;
//   final Color? color;
//   final Color? borderColor;
//   final Color? textColor;
//   final Color? inactiveColor;
//   final Color? inactiveTextColor;
//   final bool onLoading;
//   final bool expanded;
//   final EdgeInsets? padding;
//   //  final var borderColor = 0;

//   @override
//   Widget build(BuildContext context) {
//     bool active = onTap != null;

//     return expanded
//         ? button(active)
//         : Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [button(active)],
//           );
//   }

//   SpringButton button(bool active) {
//     final buttonColor = color ?? kSecondaryColor;
//     return SpringButton(
//       SpringButtonType.OnlyScale,
//       Container(
//         padding:
//             padding ?? const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
//         decoration: BoxDecoration(
//             color: active
//                 ? buttonColor
//                 : inactiveColor ?? Colors.grey.withOpacity(0.3),
//             borderRadius: BorderRadius.circular(borderRadius),
//             border:
//                 borderColor != null ? Border.all(color: borderColor!) : null),
//         child: Center(
//             child: onLoading
//                 ? SizedBox(
//                     height: 18,
//                     width: 18,
//                     child: CircularProgressIndicator(
//                       color: textColor,
//                       strokeWidth: 2,
//                     ),
//                   )
//                 : Text(
//                     text,
//                     style: TextStyle(
//                         color: active
//                             ? textColor
//                             : inactiveTextColor ?? Colors.grey.shade500,
//                         fontWeight: FontWeight.w500),
//                   )),
//       ),
//       scaleCoefficient: 0.95,
//       useCache: false,
//       onTap: onTap,
//     );
//   }
// }

// class TextButtonUnderLined extends StatelessWidget {
//   const TextButtonUnderLined({
//     super.key,
//     this.onTap,
//     required this.label,
//   });
//   final VoidCallback? onTap;
//   final String label;
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 20,
//       child: TextButton(
//           style: TextButton.styleFrom(
//               padding: EdgeInsets.zero,

//               // minimumSize: Size.fromWidth(sw * 0.9),
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(25))),
//           onPressed: onTap,
//           child: Text(
//             label,
//             style: const TextStyle(
//               fontWeight: FontWeight.normal,
//               fontSize: 14,
//               shadows: [Shadow(color: Colors.black, offset: Offset(0, -1))],
//               color: Colors.transparent,
//               decoration: TextDecoration.underline,
//               decorationColor: Colors.black,
//               decorationThickness: 2,
//             ),
//           )),
//     );
//   }
// }
