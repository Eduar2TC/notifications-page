import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomLinkText extends StatefulWidget {
  String text;
  Color originalColor;
  Color colorHovered;
  FontWeight fontWeight;
  double fontSize;

  CustomLinkText({
    required this.text,
    required this.originalColor,
    required this.colorHovered,
    required this.fontWeight,
    required this.fontSize,
  });

  @override
  State<CustomLinkText> createState() => _CustomLinkTextState();
}

class _CustomLinkTextState extends State<CustomLinkText> {
  Color? color;
  void updateColor(bool value) {
    setState(() {
      color = value ? widget.colorHovered : widget.originalColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {}),
      onHover: (value) {
        updateColor(value);
      },
      child: Text(
        widget.text,
        style: GoogleFonts.plusJakartaSans(
          textStyle: TextStyle(
            color: color,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
          ),
        ),
      ),
    );
  }
}
//TODO: PONER MAS PARAMETROS PARA LOS CUSTOM LINKS
