import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notifications_page/widgets/custom_widgets.dart';

class MobileBody extends StatelessWidget {
  MobileBody({super.key});

  /*Colors Primary*/
  Color red = const Color(0xfff65351);
  Color blue = const Color(0xff0a317b);
  /*Colors Neutral */
  Color white = const Color(0xffffffff);
  Color veryLightGrayishBlue = const Color(0xfff7fafd);
  Color lightGrayishBlue1 = const Color(0xffe5effa);
  Color lightGrayishBlue2 = const Color(0xffdde7ee);
  Color grayishBlue = const Color(0xff939dae);
  Color darkGrayishBlue = const Color(0xff5e6778);
  Color veryDarkBlue = const Color(0xff1c202b);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: veryLightGrayishBlue,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: FittedBox(
                fit: BoxFit.none,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 60),
                  width: 375,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 20),
                    child: Column(
                      children: [
                        //Titles
                        Titles(right: grayishBlue, left: veryDarkBlue),
                        const SizedBox(
                          height: 35,
                        ),
                        React(
                          name: 'Mark Webber',
                          image: 'avatar-mark-webber.webp',
                          post: 'My first tournament today!',
                          date: '1m ago',
                          veryLightGrayishBlue: veryLightGrayishBlue,
                          taken: true,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 340,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'lib/assets/img/avatar-angela-gray.webp',
                                  filterQuality: FilterQuality.high,
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    CustomLinkText(
                                      colorHovered: const Color(0xff0a317b),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      originalColor: const Color(0xff1c202b),
                                      text: 'Angela Gray',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'followed you',
                                      style: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            color: Color(0xff5e6778),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Container(
                                      width: 7,
                                      height: 7,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(50),
                                      ),
                                    )
                                  ]),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    '5m ago',
                                    style: GoogleFonts.plusJakartaSans(
                                      textStyle: const TextStyle(
                                          color: Color(0xff939dae),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 340,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'lib/assets/img/avatar-jacob-thompson.webp',
                                  filterQuality: FilterQuality.high,
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Flexible(
                                        child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                              text: 'Jacob Thompson',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff1c202b),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: 10,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'has joined your group',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff5e6778),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: 10,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Chess Club',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff0a317b),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: 5,
                                              ),
                                            ),
                                            WidgetSpan(
                                                alignment:
                                                    PlaceholderAlignment.middle,
                                                child: Container(
                                                  width: 7,
                                                  height: 7,
                                                  decoration: BoxDecoration(
                                                    color: Colors.red,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                  ),
                                                )),
                                          ]),
                                        ),
                                      ),
                                    ]),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '1 day ago',
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
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 340,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'lib/assets/img/avatar-rizky-hasanuddin.webp',
                                  filterQuality: FilterQuality.high,
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Flexible(
                                        child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                              text: ' Rizky Hasanuddin ',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff1c202b),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: 10,
                                              ),
                                            ),
                                            TextSpan(
                                              text:
                                                  'send you a private message',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff5e6778),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ]),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '5 days ago',
                                      style: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            color: Color(0xff939dae),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const Message(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 340,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'lib/assets/img/avatar-kimberly-smith.webp',
                                  filterQuality: FilterQuality.high,
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Flexible(
                                            child: RichText(
                                              text: TextSpan(children: [
                                                TextSpan(
                                                  text: 'Kimberly Smith',
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xff1c202b),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w800),
                                                  ),
                                                ),
                                                const WidgetSpan(
                                                  child: SizedBox(
                                                    width: 10,
                                                  ),
                                                ),
                                                TextSpan(
                                                  text:
                                                      'commented on your picture',
                                                  style: GoogleFonts
                                                      .plusJakartaSans(
                                                    textStyle: const TextStyle(
                                                        color:
                                                            Color(0xff5e6778),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ),
                                              ]),
                                            ),
                                          ),
                                        ]),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '1 week ago',
                                      style: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            color: Color(0xff939dae),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Image.asset('lib/assets/img/image-chess.webp',
                                  width: 40, height: 40),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        React(
                          name: 'Nathan Peterson',
                          image: 'avatar-nathan-peterson.webp',
                          post: '5 end-game strategies to increase win rate',
                          date: '2 weeks ago',
                          veryLightGrayishBlue: veryLightGrayishBlue,
                          taken: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 340,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  'lib/assets/img/avatar-anna-kim.webp',
                                  filterQuality: FilterQuality.high,
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(children: [
                                      Flexible(
                                        child: RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                              text: 'Anna Kim',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff1c202b),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: 5,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'left the group',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff5e6778),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                            const WidgetSpan(
                                              child: SizedBox(
                                                width: 10,
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Chess Club',
                                              style:
                                                  GoogleFonts.plusJakartaSans(
                                                textStyle: const TextStyle(
                                                    color: Color(0xff0a317b),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                            ),
                                          ]),
                                        ),
                                      ),
                                    ]),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      '2 weeks ago',
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
                        ),
                      ],
                    ),
                    //Content
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
