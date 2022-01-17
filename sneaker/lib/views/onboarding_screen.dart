import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneaker/components/logo.dart';
import 'package:sneaker/views/auth/sign_in.view.dart';
import 'package:sneaker/views/auth/sign_up.view.dart';

class OnBoardingScreen extends StatefulWidget {
  static const String routeName = "/onBoarding";
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int activeIndex = 0;
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(height: 40.0),
            const Logo(),
            const SizedBox(height: 6.0),
            const Text(
              "Trouvez des offres incroyables !",
              style: TextStyle(
                fontFamily: "Futura",
                color: Color(0xff888E9A),
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 6.0),
            SvgPicture.asset("assets/imgs/Underline_06.svg"),
            Stack(
              children: [
                SizedBox(
                  height: 400,
                  child: PageView(
                    controller: _pageController,
                    onPageChanged: (int index) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    children: <Widget>[
                      Image.asset("assets/imgs/running_shoes1.png"),
                      Image.asset("assets/imgs/airforce1.png"),
                      Image.asset("assets/imgs/jordan.png"),
                    ],
                  ),
                ),
                Positioned(
                  top: 170,
                  left: 30,
                  child: SvgPicture.asset("assets/imgs/Misc_04.svg"),
                ),
                Positioned(
                  top: 280,
                  right: 20,
                  child: SvgPicture.asset("assets/imgs/25.svg"),
                ),
                Positioned(
                  top: 320,
                  right: 30,
                  child: SvgPicture.asset("assets/imgs/Highlight_10.svg"),
                ),
                Positioned(
                  left: 10,
                  bottom: 0,
                  child: SvgPicture.asset("assets/imgs/11.svg"),
                ),
                Positioned(
                  top: 390,
                  right: MediaQuery.of(context).size.width * .4,
                  child: Row(
                    children: List.generate(
                      3,
                      (index) => Padding(
                        padding: EdgeInsets.only(right: index < 2 ? 10.0 : 0),
                        child: Container(
                          width: activeIndex == index ? 42.0 : 18.0,
                          height: 5,
                          decoration: BoxDecoration(
                            color: activeIndex == index
                                ? const Color(0xffB9F636)
                                : const Color(0xffC4C4C4),
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 29),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff6342E8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(70),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(SignInView.routeName);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.shopping_bag),
                      SizedBox(width: 9.0),
                      Text(
                        "Acheter maintenant",
                        style: TextStyle(
                          fontFamily: 'Futura',
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 36.0),
          ],
        ),
      ),
    );
  }
}
