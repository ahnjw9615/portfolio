import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Introducepage extends StatefulWidget {
  const Introducepage({super.key});

  @override
  State<Introducepage> createState() => _IntroducePageState();
}

class _IntroducePageState extends State<Introducepage>
    with TickerProviderStateMixin {
  bool selected = false;

  double _opacity = 0.0;
  EdgeInsetsGeometry _padding = EdgeInsetsGeometry.all(10);
  Offset _offset = Offset.fromDirection(1.0);

  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 300), () {
      setState(() {
        _opacity = 1.0;
        _padding = EdgeInsetsGeometry.zero;
        _offset = Offset.zero;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    double fontSizeSmall = shortScreenSize * 0.018;
    double fontSizeMedium = shortScreenSize * 0.02;
    double fontSizeLarge = shortScreenSize * 0.04;

    return SafeArea(
      child: Container(
        color: Color.fromRGBO(247, 247, 247, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              flex: 5,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "이승후",
                      style: TextStyle(
                        fontSize: fontSizeLarge,
                        fontFamily: "OpenSansCondensed",
                        fontWeight: FontWeight.w700,
                        color: Colors.black87,
                        letterSpacing: 0.8,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "Lee Seung Hoo",
                      style: TextStyle(
                        fontSize: shortScreenSize * 0.028,
                        fontFamily: "OpenSansCondensed",
                        fontWeight: FontWeight.w100,
                        color: Colors.black54,
                        letterSpacing: 0.8,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.01),
                    Text(
                      "1996.02.16",
                      style: TextStyle(
                        fontSize: shortScreenSize * 0.026,
                        fontFamily: "OpenSansCondensed",
                        fontWeight: FontWeight.w100,
                        color: Colors.black87,
                        letterSpacing: 0.8,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.09),
                    SizedBox(
                      width: shortScreenSize * 0.35,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Flexible(
                                flex: 4,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Mobile",
                                    style: TextStyle(
                                      fontSize: fontSizeMedium,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "010-6751-0120",
                                    style: TextStyle(
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: shortScreenSize * 0.02),
                          Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Email",
                                    style: TextStyle(
                                      fontSize: fontSizeMedium,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: InkWell(
                                    onTap: () {
                                      sendEmail();
                                    },
                                    child: Text(
                                      "lswho789@naver.com",
                                      style: TextStyle(
                                        fontSize: fontSizeSmall,
                                        fontFamily: "OpenSansCondensed",
                                        fontWeight: FontWeight.w100,
                                        color: Colors.black87,
                                        letterSpacing: 0.8,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: shortScreenSize * 0.02),
                          Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Blog",
                                    style: TextStyle(
                                      fontSize: fontSizeMedium,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: InkWell(
                                    onTap: () {
                                      launchUrl(
                                        Uri.parse(
                                          "https://blog.naver.com/lswho789",
                                        ),
                                      );
                                      //sendEmail();
                                    },
                                    child: Text(
                                      "blog.naver.com/lswho789",
                                      style: TextStyle(
                                        fontSize: fontSizeSmall,
                                        fontFamily: "OpenSansCondensed",
                                        fontWeight: FontWeight.w100,
                                        color: Colors.black87,
                                        letterSpacing: 0.8,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: shortScreenSize * 0.02),
                          Row(
                            children: [
                              Flexible(
                                flex: 4,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Youtube",
                                    style: TextStyle(
                                      fontSize: fontSizeMedium,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: InkWell(
                                    onTap: () {
                                      launchUrl(
                                        Uri.parse(
                                          "https://www.youtube.com/@lswho789",
                                        ),
                                      );
                                      //sendEmail();
                                    },
                                    child: Text(
                                      "www.youtube.com/@lswho789",
                                      style: TextStyle(
                                        fontSize: fontSizeSmall,
                                        fontFamily: "OpenSansCondensed",
                                        fontWeight: FontWeight.w100,
                                        color: Colors.black87,
                                        letterSpacing: 0.8,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: shortScreenSize * 0.08),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 4,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Education",
                                    style: TextStyle(
                                      fontSize: fontSizeMedium,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "명지전문대학교\n커뮤니케이션디자인과\n2학년 재학",
                                    style: TextStyle(
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: shortScreenSize * 0.05),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Flexible(
                                flex: 4,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Award",
                                    style: TextStyle(
                                      fontSize: fontSizeMedium,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                flex: 6,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "제 30회\n커뮤니케이션 디자인 국제 공모전 입상",
                                    style: TextStyle(
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.8,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.tealAccent,
                    width: shortScreenSize * 0.45,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Skill",
                            style: TextStyle(
                              fontSize: shortScreenSize * 0.025,
                              fontFamily: "OpenSansCondensed",
                              fontWeight: FontWeight.w700,
                              color: Colors.black87,
                              letterSpacing: 0.8,
                            ),
                          ),
                        ),
                        SizedBox(height: shortScreenSize * 0.035),
                        Row(
                          children: [
                            Flexible(
                              flex: 5,
                              child: Row(
                                children: [
                                  AnimatedOpacity(
                                    duration: Duration(seconds: 2),
                                    opacity: _opacity,
                                    child: Image.asset(
                                      "assets/images/img_ai.png",
                                      width: shortScreenSize * 0.045,
                                      height: shortScreenSize * 0.045,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(width: shortScreenSize * 0.012),
                                  Text(
                                    "Adobe\nIllustrator",
                                    style: TextStyle(
                                      height: 1,
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 5,
                              child: Row(
                                children: [
                                  AnimatedRotation(
                                    turns: _opacity,
                                    duration: Duration(seconds: 2),
                                    child: Image.asset(
                                      "assets/images/img_ae.png",
                                      width: shortScreenSize * 0.045,
                                      height: shortScreenSize * 0.045,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(width: shortScreenSize * 0.012),
                                  Text(
                                    "Adobe\nAfter Effects",
                                    style: TextStyle(
                                      height: 1,
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            /*  Flexible(
                          flex: 4,
                          child: Container())*/
                          ],
                        ),
                        SizedBox(height: shortScreenSize * 0.06),
                        Row(
                          children: [
                            Flexible(
                              flex: 5,
                              child: Row(
                                children: [
                                  InkWell(
                                    child: Container(
                                      width: shortScreenSize * 0.045,
                                      height: shortScreenSize * 0.045,
                                      color: Colors.tealAccent[50],
                                      child: AnimatedOpacity(
                                        opacity: selected ? 0.0 : 1.0,
                                        duration: Duration(milliseconds: 500),
                                        child: Image.asset(
                                          "assets/images/img_ps.png",
                                          width: shortScreenSize * 0.045,
                                          height: shortScreenSize * 0.045,
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                    onTap: () {
                                      setState(() {
                                        selected = !selected;
                                      });
                                    },
                                  ),
                                  SizedBox(width: shortScreenSize * 0.012),
                                  Text(
                                    "Adobe\nPhotoshop",
                                    style: TextStyle(
                                      height: 1,
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 5,
                              child: Row(
                                children: [
                                  /*AnimatedPadding(
                                      padding: _padding,
                                      duration: Duration(seconds: 2),
                                      child: Image.asset(
                                        "assets/images/img_cenema.png",
                                        width: shortScreenSize * 0.045,
                                        height: shortScreenSize * 0.045,
                                        fit: BoxFit.contain,
                                      ),
                                    ),*/
                                  Image.asset(
                                    "assets/images/img_cenema.png",
                                    width: shortScreenSize * 0.045,
                                    height: shortScreenSize * 0.045,
                                    fit: BoxFit.contain,
                                  ),

                                  SizedBox(width: shortScreenSize * 0.012),
                                  Text(
                                    "Maxon\nCinema 4D",
                                    style: TextStyle(
                                      height: 1,
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            /*     Flexible(
                          flex: 4,
                          child: Container())*/
                          ],
                        ),
                        SizedBox(height: shortScreenSize * 0.06),
                        Row(
                          children: [
                            Flexible(
                              flex: 5,
                              child: Row(
                                children: [
                                  AnimatedSlide(
                                    offset: _offset,
                                    duration: Duration(seconds: 2),
                                    child: Image.asset(
                                      "assets/images/img_id.png",
                                      width: shortScreenSize * 0.045,
                                      height: shortScreenSize * 0.045,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  SizedBox(width: shortScreenSize * 0.012),
                                  Text(
                                    "Adobe\nIndesign",
                                    style: TextStyle(
                                      height: 1,
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 5,
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/images/img_figma.png",
                                    width: shortScreenSize * 0.045,
                                    height: shortScreenSize * 0.045,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: shortScreenSize * 0.012),
                                  Text(
                                    "Figma",
                                    style: TextStyle(
                                      height: 1,
                                      fontSize: fontSizeSmall,
                                      fontFamily: "OpenSansCondensed",
                                      fontWeight: FontWeight.w100,
                                      color: Colors.black87,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            /* Flexible(
                          flex: 4,
                          child: Container())*/
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: shortScreenSize * 0.12),
                  Container(
                    width: shortScreenSize * 0.45,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: shortScreenSize * 0.002,
                              ),
                              child: Text(
                                "좋은 디자인이란?",
                                style: TextStyle(
                                  fontSize: fontSizeMedium * 1.2,
                                  fontFamily: "OpenSansCondensed",
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black87,
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ),
                            SizedBox(height: shortScreenSize * 0.015),
                            Text(
                              "제가 생각하는 좋은 디자인은 ‘이유 있는 디자인’입니다.\n단순히 예쁘기만 한 것이 아니라 왜 이 디자인이 나왔는지,\n왜 이 디자인이 아름다운지에 대해 설명이 가능해야\n좋은 디자인이라고 생각합니다.",
                              style: TextStyle(
                                height: 1.3,
                                fontSize: fontSizeSmall,
                                fontFamily: "OpenSansCondensed",
                                fontWeight: FontWeight.w100,
                                color: Colors.black54,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: shortScreenSize * 0.035),
                  Container(
                    width: shortScreenSize * 0.45,
                    child: Row(
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: shortScreenSize * 0.002,
                              ),
                              child: Text(
                                "나의 디자인은..   ",
                                style: TextStyle(
                                  fontSize: fontSizeMedium * 1.1,
                                  fontFamily: "OpenSansCondensed",
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black87,
                                  letterSpacing: 0.3,
                                ),
                              ),
                            ),
                            SizedBox(height: shortScreenSize * 0.015),
                            Text(
                              "저의 디자인은 ‘좋은 디자인’이 었으면 좋 겠습니다 .\n단순히 보기 좋은 것 을 넘어서, 사람들을 설 득할 수 있 는\n‘이유’를 담은 디자인 을 만 들고 싶습니다 .\n그런 디자인 을 통해 사람들의 일상에 행복과 편안함을\n전할 수 있기를 바랍니다 .",
                              style: TextStyle(
                                height: 1.2,
                                fontSize: fontSizeSmall,
                                fontFamily: "OpenSansCondensed",
                                fontWeight: FontWeight.w100,
                                color: Colors.black54,
                                letterSpacing: 0.3,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


void sendEmail() async {
  final Uri emailLaunchUri = Uri(
    scheme: 'mailto',
    path: 'lswho789@naver.com',
    query: _encodeQueryParameters(<String, String>{
      'subject': '문의드립니다',
      'body': '안녕하세요, 찌봉이입니다!.',
    }),
  );

  if (await canLaunchUrl(emailLaunchUri)) {
    await launchUrl(emailLaunchUri, mode: LaunchMode.externalApplication);
  } else {
    throw '이메일 앱을 열 수 없습니다.';
  }
}

String? _encodeQueryParameters(Map<String, String> params) {
  return params.entries
      .map(
        (e) => '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',
  )
      .join('&');
}