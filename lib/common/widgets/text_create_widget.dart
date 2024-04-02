// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextCreateWidget extends StatelessWidget {
  final String text;
  final IconData iconData;
  final Color color;
  const TextCreateWidget({
    Key? key,
    required this.text,
    required this.iconData,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: GoogleFonts.ubuntu(color: color, fontSize: 11),
        ),
        Icon(iconData)
      ],
    );
  }
}
