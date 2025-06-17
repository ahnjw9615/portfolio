import 'package:flutter/material.dart';

class Indexpage1Sub1 extends StatefulWidget {
  const Indexpage1Sub1({super.key});

  @override
  State<Indexpage1Sub1> createState() => _Indexpage1Sub1State();
}

class _Indexpage1Sub1State extends State<Indexpage1Sub1> {
  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    double fontSizeSmall = shortScreenSize * 0.018;
    double fontSizeSemiMedium = shortScreenSize * 0.025;
    double fontSizeMedium = shortScreenSize * 0.032;
    double fontSizeLarge = shortScreenSize * 0.14;

    return Container(
      color: Color.fromRGBO(247, 247, 247, 1),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(shortScreenSize * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Form &\nTexture",
                      style: TextStyle(
                        height: 1,
                        fontSize: fontSizeMedium,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.12),
                    Text(
                      "첫 그래픽 디자인 작업의 시작으로\n형태와 질감에 집중하며 작업을\n해보았습니다.",
                      style: TextStyle(
                        height: 1.3,
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.1,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "단어를 정하고 그 단어를\n단순한 선과 면으로 이루어진 형채와\n하프톤, 그레인 효과 등의 질감을 통해\n시각적인 재미와 깊이를\n표현해 보았습니다.",
                      style: TextStyle(
                        height: 1.2,
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.1,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.12),
                    Row(
                      children: [
                        Text(
                          "01. ",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeMedium,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          "Apple",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeSemiMedium,
                            fontFamily: "AstaSans",
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: shortScreenSize * 0.015),
                    Row(
                      children: [
                        Text(
                          "02. ",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeMedium,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          "전구",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeSemiMedium,
                            fontFamily: "AstaSans",
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: shortScreenSize * 0.015),
                    Row(
                      children: [
                        Text(
                          "03. ",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeMedium,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          "만년필",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeSemiMedium,
                            fontFamily: "AstaSans",
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: shortScreenSize * 0.015),
                    Row(
                      children: [
                        Text(
                          "04. ",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeMedium,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          "풍력 발전기",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeSemiMedium,
                            fontFamily: "AstaSans",
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: shortScreenSize * 0.015),
                    Row(
                      children: [
                        Text(
                          "05. ",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeMedium,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          "진화",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeSemiMedium,
                            fontFamily: "AstaSans",
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: shortScreenSize * 0.015),
                    Row(
                      children: [
                        Text(
                          "06. ",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeMedium,
                            fontFamily: "IBMPlexSans",
                            fontWeight: FontWeight.w400,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                        Text(
                          "MONEY",
                          style: TextStyle(
                            height: 1.3,
                            fontSize: fontSizeSemiMedium,
                            fontFamily: "AstaSans",
                            fontWeight: FontWeight.w200,
                            color: Colors.black87,
                            letterSpacing: 0.1,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: shortScreenSize * 0.03),
                  ],
                ),
              ),
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  ],
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}