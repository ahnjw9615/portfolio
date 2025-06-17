import 'package:flutter/material.dart';

class IndexpageSub2 extends StatefulWidget {
  const IndexpageSub2({super.key});

  @override
  State<IndexpageSub2> createState() => _IndexpageSub2State();
}

class _IndexpageSub2State extends State<IndexpageSub2> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/title_2.png',
                        width: shortScreenSize * 0.27,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(height: shortScreenSize * 0.3,)
                    ],
                  )
              ),
              Flexible(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "02.",
                      style: TextStyle(
                        fontSize: fontSizeLarge,
                        fontFamily: "AstaSans",
                        fontWeight: FontWeight.w400,
                        color: Colors.black87,
                        letterSpacing: 0.3,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.04),
                    Text(
                      " Public\n Poster",
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
                      " Design Award",
                      style: TextStyle(
                        fontSize: fontSizeSmall,
                        fontFamily: "IBMPlexSans",
                        fontWeight: FontWeight.w200,
                        color: Colors.black87,
                        letterSpacing: 0.2,
                      ),
                    ),
                    SizedBox(height: shortScreenSize * 0.13),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}