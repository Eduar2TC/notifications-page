import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notifications_page/widgets/custom_widgets.dart';

class React extends StatefulWidget {
  final Color veryLightGrayishBlue;
  String image;
  String name;
  String post;
  String date;
  bool taken;
  bool postTitleHovered = false;
  React(
      {required this.image,
      required this.name,
      required this.post,
      required this.veryLightGrayishBlue,
      required this.date,
      required this.taken});

  @override
  State<React> createState() => _ReactState();
}

class _ReactState extends State<React> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;

    return Container(
      width: 600,
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: widget.veryLightGrayishBlue),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Image.asset(
              filterQuality: FilterQuality.high,
              'lib/assets/img/${widget.image}',
              width: 300,
              height: 300,
            ),
          ),
          currentWidth < 600
              ? const SizedBox(
                  width: 13,
                )
              : const SizedBox(
                  width: 20,
                ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Flexible(
                    child: RichText(
                      softWrap: true,
                      text: TextSpan(
                        children: [
                          WidgetSpan(
                            child: CustomLinkText(
                              colorHovered: const Color(0xff0a317b),
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              originalColor: const Color(0xff1c202b),
                              text: widget.name,
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(
                              width: 10,
                            ),
                          ),
                          TextSpan(
                            text: 'reacted to your recent post',
                            style: GoogleFonts.plusJakartaSans(
                              textStyle: const TextStyle(
                                color: Color(0xff5e6778),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(
                              width: 10,
                            ),
                          ),
                          TextSpan(
                            mouseCursor: SystemMouseCursors.click,
                            onEnter: (event) {
                              setState(() {
                                widget.postTitleHovered = true;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                widget.postTitleHovered = false;
                              });
                            },
                            text: widget.post,
                            style: GoogleFonts.plusJakartaSans(
                              textStyle: TextStyle(
                                color: widget.postTitleHovered
                                    ? const Color(0xff0a317b)
                                    : const Color(0xff5e6778),
                                fontSize: 14,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(
                              width: 8,
                            ),
                          ),
                          WidgetSpan(
                            alignment: PlaceholderAlignment.middle,
                            child: widget.taken
                                ? Container(
                                    width: 7,
                                    height: 7,
                                    decoration: BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                  )
                                : Container(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.date,
                  style: GoogleFonts.plusJakartaSans(
                    textStyle: const TextStyle(
                        color: Color(0xff939dae),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
