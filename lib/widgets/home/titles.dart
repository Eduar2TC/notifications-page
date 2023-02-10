import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notifications_page/widgets/home/custom_link_text.dart';

class Titles extends StatelessWidget {
  Titles({required this.left, required this.right});
  late Color left;
  late Color right;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Notifications',
              style: GoogleFonts.plusJakartaSans(
                textStyle: TextStyle(
                    color: left, fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),
            const SizedBox(width: 12),
            Container(
              width: 31,
              height: 24,
              decoration: BoxDecoration(
                color: const Color(0xff0a317b),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '3',
                  style: GoogleFonts.plusJakartaSans(
                    textStyle: const TextStyle(
                      color: Color(0xffffffff),
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        CustomLinkText(
          text: 'Mark all as read',
          originalColor: right,
          colorHovered: const Color(0xff0a317b),
          fontWeight: FontWeight.w500,
          fontSize: 15,
        ),
      ],
    );
  }
}
