import 'package:flutter/material.dart';

class Indexpage extends StatefulWidget {
  const Indexpage({super.key});

  @override
  State<Indexpage> createState() => _IndexpageState();
}

class _IndexpageState extends State<Indexpage> {
  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    double fontSizeSmall = shortScreenSize * 0.022;
    double fontSizeMedium = shortScreenSize * 0.05;
    double fontSizeLarge = shortScreenSize * 0.09;
    double fontSizeExtraLarge = shortScreenSize * 0.13;

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
                  child: Text(
                    "Index",
                    style: TextStyle(
                      fontSize: fontSizeLarge,
                      fontFamily: "OpenSansCondensed",
                      fontWeight: FontWeight.w300,
                      color: Colors.black87,
                      letterSpacing: 0.5,
                    ),
                  ),
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
                          fontSize: fontSizeExtraLarge,
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
                    SizedBox(height: shortScreenSize * 0.06),
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
                    SizedBox(height: shortScreenSize * 0.06),
                  ],
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
                        "02.",
                        style: TextStyle(
                          fontSize: fontSizeExtraLarge,
                          fontFamily: "AstaSans",
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.04),
                    Text(
                      "Public\nPoster",
                      style: TextStyle(
                        height: 1.1,
                        fontSize: fontSizeMedium,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.06),
                    Text(
                      "Design Award",
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
                      "",
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
                      "",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.06),
                  ],
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
                        "03.",
                        style: TextStyle(
                          fontSize: fontSizeExtraLarge,
                          fontFamily: "AstaSans",
                          fontWeight: FontWeight.w400,
                          color: Colors.black87,
                          letterSpacing: 0.3,
                        ),
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.04),
                    Text(
                      "Animation\n ",
                      style: TextStyle(
                        height: 1.1,
                        fontSize: fontSizeMedium * 0.9,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.06),
                    Text(
                      "Star Maker",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
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
                        color: Colors.black87,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.06),
                  ],
                ),
              ),
              //Flexible(flex: 1, fit: FlexFit.tight, child: Container()),
              //Flexible(flex: 1, child: Container()),
            ],
          ),
        ),
      ),
    );
  }
}
