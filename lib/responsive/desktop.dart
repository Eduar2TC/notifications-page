import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notifications_page/widgets/custom_widgets.dart';

class DesktopBody extends StatelessWidget {
  DesktopBody({super.key});

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
                  width: 660,
                  decoration: BoxDecoration(
                      color: white, borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 30),
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
                          width: 600,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  filterQuality: FilterQuality.high,
                                  'lib/assets/img/avatar-angela-gray.webp',
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
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
                          width: 600,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  filterQuality: FilterQuality.high,
                                  'lib/assets/img/avatar-jacob-thompson.webp',
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
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
                                      text: 'Jacob Thompson',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'has joined your group',
                                      style: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            color: Color(0xff5e6778),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CustomLinkText(
                                      colorHovered: const Color(0xff0a317b),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      originalColor: const Color(0xff1c202b),
                                      text: 'Chess Club',
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
                                    '1 day ago',
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
                          width: 600,
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
                                  filterQuality: FilterQuality.high,
                                  'lib/assets/img/avatar-rizky-hasanuddin.webp',
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
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
                                      text: 'Rizky Hasanuddin',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'send you a private message',
                                      style: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            color: Color(0xff5e6778),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
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
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 600,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  filterQuality: FilterQuality.high,
                                  'lib/assets/img/avatar-kimberly-smith.webp',
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomLinkText(
                                          colorHovered: const Color(0xff0a317b),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w800,
                                          originalColor:
                                              const Color(0xff1c202b),
                                          text: 'Kimberly Smith',
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          'commented in your picture',
                                          style: GoogleFonts.plusJakartaSans(
                                            textStyle: const TextStyle(
                                                color: Color(0xff5e6778),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w500),
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
                              const Spacer(),
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
                          post:
                              '5 end-game strategies to increase your win rate',
                          date: '2 weeks ago',
                          veryLightGrayishBlue: veryLightGrayishBlue,
                          taken: false,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 600,
                          padding: const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 15),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: veryLightGrayishBlue),
                          child: Row(
                            children: [
                              CircleAvatar(
                                child: Image.asset(
                                  filterQuality: FilterQuality.high,
                                  'lib/assets/img/avatar-anna-kim.webp',
                                  width: 300,
                                  height: 300,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
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
                                      text: 'Anna Kim',
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'left the group',
                                      style: GoogleFonts.plusJakartaSans(
                                        textStyle: const TextStyle(
                                            color: Color(0xff5e6778),
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    CustomLinkText(
                                      colorHovered: const Color(0xff0a317b),
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      originalColor: const Color(0xff1c202b),
                                      text: 'Chess Club',
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 5,
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
            const SizedBox(
              height: 0,
            ),
          ],
        ),
      ),
    );
  }
}
