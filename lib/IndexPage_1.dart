import 'package:flutter/material.dart';

class Indexpage1 extends StatefulWidget {
  const Indexpage1({super.key});

  @override
  State<Indexpage1> createState() => _Indexpage1State();
}

class _Indexpage1State extends State<Indexpage1> {
  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    double fontSizeSmall = shortScreenSize * 0.027;
    double fontSizeSemiMedium = shortScreenSize * 0.048;
    double fontSizeMedium = shortScreenSize * 0.054;
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
                child: Container(
                ),
              ),
              Flexible(
                flex: 2,
                fit: FlexFit.tight,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(shortScreenSize * 0.005),
                      child: Text(
                        "01.",
                        style: TextStyle(
                          fontSize: fontSizeLarge,
                          fontFamily: "AstaSans",
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.04),
                    Text(
                      "Graphic\nDesign",
                      style: TextStyle(
                        height: 1.1,
                        fontSize: fontSizeMedium,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.1),
                    Text(
                      "Form & Texture",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "Color",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "Expression",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
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
                    Image.asset(
                      'assets/images/title_1.png',
                      width: shortScreenSize * 0.4,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: shortScreenSize * 0.2,)
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