import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset("assets/imgs/Highlight_05.svg"),
        const SizedBox(width: 13.0),
        const Text(
          "Sneak-er",
          style: TextStyle(
            fontSize: 34.0,
            fontFamily: "Futura",
            fontWeight: FontWeight.w700,
            letterSpacing: 1.0,
          ),
        )
      ],
    );
  }
}
