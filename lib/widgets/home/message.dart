import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Message extends StatefulWidget {
  const Message({
    Key? key,
  }) : super(key: key);

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  late bool hovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          hovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          hovered = false;
        });
      },
      cursor: SystemMouseCursors.click,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        width: 510,
        padding: const EdgeInsets.all(18),
        decoration: BoxDecoration(
          color: hovered ? const Color(0xffdde7ee) : Colors.white,
          border: Border.all(color: const Color(0xffdde7ee), width: 1),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          'Hello, thanks for setting up the Chess Club, I´ve been a member for a few weeks now and I´m already having lots of fun and improving my game.',
          style: GoogleFonts.plusJakartaSans(
            textStyle: const TextStyle(
                color: Color(0xff5e6778),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
