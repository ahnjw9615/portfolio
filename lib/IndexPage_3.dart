import 'package:flutter/material.dart';

class Indexpage3 extends StatefulWidget {
  const Indexpage3({super.key});

  @override
  State<Indexpage3> createState() => _Indexpage3State();
}

class _Indexpage3State extends State<Indexpage3> {
  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    double fontSizeSmall = shortScreenSize * 0.027;
    double fontSizeSemiMedium = shortScreenSize * 0.048;
    double fontSizeMedium = shortScreenSize * 0.05;
    double fontSizeLarge = shortScreenSize * 0.14;

    return Container(
      color: Color.fromRGBO(46, 46, 46, 1),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(shortScreenSize * 0.05),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(),
              Flexible(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(shortScreenSize * 0.005),
                      child: Text(
                        "03.",
                        style: TextStyle(
                          fontSize: fontSizeLarge,
                          fontFamily: "AstaSans",
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.04),
                    Text(
                      "Animation",
                      style: TextStyle(
                        height: 1.1,
                        fontSize: fontSizeMedium,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.17),
                    Text(
                      "Star Maker",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.white70,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "Journey",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.white70,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.13),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/title_3_white.png',
                      width: shortScreenSize * 0.12,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: shortScreenSize * 0.57,)
                  ],
                )
              ),
              SizedBox(
                width: shortScreenSize * 0.07,
              )
            ],
          ),
        ),
      ),
    );
  }
}