import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:pofol/IndexPage_2.dart';
import 'package:pofol/IndexPage_3.dart';
import 'IntroducePage.dart';
import 'IndexPage.dart';
import 'IndexPage_1.dart';

void main() {
  runApp(CustomAlignedRow());
}

bool get isMobileWeb {
  if (!kIsWeb) return false;
  return defaultTargetPlatform == TargetPlatform.iOS ||
      defaultTargetPlatform == TargetPlatform.android;
}

class CustomAlignedRow extends StatelessWidget {
  const CustomAlignedRow({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedOpacityScreen(),
    );
  }
}

class AnimatedOpacityScreen extends StatefulWidget {
  const AnimatedOpacityScreen({super.key});

  @override
  State<AnimatedOpacityScreen> createState() => _AnimatedOpacityScreenState();
}

class _AnimatedOpacityScreenState extends State<AnimatedOpacityScreen> {
  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    // var screenWidth = screenSize.width;
    // var screenHeight = screenSize.height;

    final PageController _controller = PageController();
    int _currentPage = 0;

    final List<String> pages = ["main", "1", "2", "3", "4", "5"];

    final List<PortfolioItem> items = [
      PortfolioItem(
        title: "W",
        imageName: 'assets/images/title_1.png',
        alignment: Alignment.topCenter,
        width: shortScreenSize * 0.3,
        isOverlay: false,
      ),
      PortfolioItem(
        title: "H",
        imageName: 'assets/images/title_2.png',
        alignment: Alignment.center,
        width: shortScreenSize * 0.19,
        isOverlay: true,
      ),
      PortfolioItem(
        title: "Y",
        imageName: 'assets/images/title_3.png',
        alignment: Alignment.bottomCenter,
        width: shortScreenSize * 0.08,
        isOverlay: false,
      ),
    ];

    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: _controller,
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
        itemCount: pages.length,
        itemBuilder: (context, index) {
          final item = pages[index];
          final bool isLast = index == pages.length - 1;

          return index == 0 ? MainPage(items: items) : getPage(item);
        },
      ),
    );
  }
}

StatefulWidget? getPage(String pageName) {
  switch (pageName) {
    case "1":
      return Introducepage();
    case "2":
      return Indexpage();
    case "3":
      return IndexpageSub1();
    case "4":
      return IndexpageSub2();
    case "5":
      return IndexpageSub3();
    default:
      return DefaultPage();
  }
}

class MainPage extends StatelessWidget {
  final List<PortfolioItem> items;

  const MainPage({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    final shortScreenSize = MediaQuery.of(context).size.shortestSide;
    double fontSizeMedium = shortScreenSize * 0.02;

    return SafeArea(
      child: Container(
        color: Color.fromRGBO(247, 247, 247, 1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: shortScreenSize * 0.6,
              child: Padding(
                padding: EdgeInsets.only(
                  top: shortScreenSize * 0.13,
                  left: shortScreenSize * 0.1,
                  right: shortScreenSize * 0.1,
                ),
                child: Row(
                  children: List.generate(items.length, (i) {
                    return Expanded(
                      child:
                          items[i].alignment == Alignment.center
                              ? Align(
                                alignment: items[i].alignment,
                                child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          items[i].title,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            height: 0.8,
                                            fontSize: shortScreenSize * 0.045,
                                            fontFamily: "IBMPlexSans",
                                            fontWeight: FontWeight.w900,
                                            color: Colors.black87,
                                            letterSpacing: 1.3,
                                          ),
                                        ),
                                        Image.asset(
                                          items[i].imageName,
                                          width: items[i].width,
                                          fit: BoxFit.contain,
                                        ),
                                      ],
                                    )
                                    .animate()
                                    .fadeIn(
                                      duration: 600.ms,
                                      delay: (i * 1).seconds,
                                    )
                                    .slideY(begin: 0.3),
                              )
                              : Align(
                                alignment: items[i].alignment,
                                child:
                                    items[i].alignment == Alignment.topCenter
                                        ? Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Image.asset(
                                                  items[i].imageName,
                                                  width: items[i].width,
                                                  fit: BoxFit.contain,
                                                ),
                                                //const SizedBox(height: 2),
                                                Text(
                                                  items[i].title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    height: 0.8,
                                                    fontSize:
                                                        shortScreenSize * 0.045,
                                                    fontFamily: "IBMPlexSans",
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.black87,
                                                    letterSpacing: 1.3,
                                                  ),
                                                ),
                                              ],
                                            )
                                            .animate()
                                            .fadeIn(
                                              duration: 600.ms,
                                              delay: (i * 1).seconds,
                                            )
                                            .slideY(begin: 0.3)
                                        : Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  items[i].title,
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                    height: 0.8,
                                                    fontSize:
                                                        shortScreenSize * 0.045,
                                                    fontFamily: "IBMPlexSans",
                                                    fontWeight: FontWeight.w900,
                                                    color: Colors.black87,
                                                    letterSpacing: 1.3,
                                                  ),
                                                ),
                                                SizedBox(
                                                  height:
                                                      shortScreenSize * 0.005,
                                                ),
                                                Image.asset(
                                                  items[i].imageName,
                                                  width: items[i].width,
                                                  fit: BoxFit.contain,
                                                ),
                                              ],
                                            )
                                            .animate()
                                            .fadeIn(
                                              duration: 600.ms,
                                              delay: (i * 1).seconds,
                                            )
                                            .slideY(begin: 0.3),
                              ),
                    );
                  }),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "나는 항상 '왜?'를 묻는다.\n삶에서도, 디자인에서도.",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: fontSizeMedium,
                    fontFamily: "OpenSansCondensed",
                    fontWeight: FontWeight.w100,
                    color: Colors.black54,
                    letterSpacing: 0.8,
                  ),
                ),
                SizedBox(height: shortScreenSize * 0.03),
                Text(
                  "이승후",
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.shortestSide * 0.025,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w100,
                    color: Colors.grey,
                    letterSpacing: 1.1,
                  ),
                ),
                Text(
                  "Lee Seung Hoo",
                  style: TextStyle(
                    fontSize: fontSizeMedium,
                    fontFamily: "OpenSansCondensed",
                    fontWeight: FontWeight.w100,
                    color: Colors.grey,
                    letterSpacing: 0.9,
                  ),
                ),
                SizedBox(height: shortScreenSize * 0.05),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultPage extends StatefulWidget {
  const DefaultPage({super.key});

  @override
  State<DefaultPage> createState() => _DefaultPageState();
}

class _DefaultPageState extends State<DefaultPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(247, 247, 247, 1),
    );
  }
}


class PortfolioItem {
  final String title;
  final String imageName;
  final Alignment alignment;
  final double width;
  final bool isOverlay;

  PortfolioItem({
    required this.title,
    required this.imageName,
    required this.alignment,
    required this.width,
    required this.isOverlay,
  });
}
