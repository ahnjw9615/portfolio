import 'package:flutter/material.dart';

class IndexpageSub1 extends StatefulWidget {
  const IndexpageSub1({super.key});

  @override
  State<IndexpageSub1> createState() => _IndexpageSub1State();
}

class _IndexpageSub1State extends State<IndexpageSub1> {
  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    double fontSizeSmall = shortScreenSize * 0.022;
    double fontSizeSemiMedium = shortScreenSize * 0.048;
    double fontSizeMedium = shortScreenSize * 0.05;
    double fontSizeLarge = shortScreenSize * 0.09;

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
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                          letterSpacing: 1.3,
                        ),
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.06),
                    Text(
                      "Graphic\nDesign",
                      style: TextStyle(
                        height: 1.1,
                        fontSize: fontSizeMedium,
                        fontFamily: "OpenSansSemiCondensed",
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        letterSpacing: 0.7,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.06),
                    Text(
                      "Form & Texture",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "OpenSansCondensed",
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "Color",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "OpenSansCondensed",
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.02),
                    Text(
                      "Expression",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "OpenSansCondensed",
                        fontWeight: FontWeight.w500,
                        color: Colors.black87,
                        letterSpacing: 1.5,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.06),
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
                      width: shortScreenSize * 0.42,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: shortScreenSize * 0.3,)
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