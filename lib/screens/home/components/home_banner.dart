import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:my_profile/responsive.dart';

import '../../../constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/288728953_3105534909776009_4860460118475979015_n.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.66),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Discover My Amazing \nArt Space!",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: defaultPadding / 2),
                // MyBuildAnimatedText(),

                MyBuildAnimatedText2(),

                SizedBox(height: defaultPadding),
                // if (!Responsive.isMobileLarge(context))
                //   ElevatedButton(
                //     onPressed: () {},
                //     style: TextButton.styleFrom(
                //       padding: EdgeInsets.symmetric(
                //           horizontal: defaultPadding * 2,
                //           vertical: defaultPadding),
                //       backgroundColor: primaryColor,
                //     ),
                //     child: Text(
                //       "EXPLORE NOW",
                //       style: TextStyle(color: darkColor),
                //     ),
                //   ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I built "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText(),
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("responsive web and mobile app.",
            speed: Duration(milliseconds: 120)),
        TyperAnimatedText("complete School Management System",
            speed: Duration(milliseconds: 120)),
        TyperAnimatedText("complete ecommerce app ",
            speed: Duration(milliseconds: 120)),
      ],
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "Flutter",
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}

class MyBuildAnimatedText2 extends StatelessWidget {
  const MyBuildAnimatedText2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      maxLines: 1,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) FlutterCodedText2(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          Text("I built "),
          Responsive.isMobile(context)
              ? Expanded(child: AnimatedText())
              : AnimatedText2(),
          if (!Responsive.isMobileLarge(context))
            SizedBox(width: defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) FlutterCodedText2(),
        ],
      ),
    );
  }
}

class AnimatedText2 extends StatelessWidget {
  const AnimatedText2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText("Interactive Drawing Education System for Children",
            speed: Duration(milliseconds: 200)),
        TyperAnimatedText("Heartbeat Categorization system",
            speed: Duration(milliseconds: 100)),
        TyperAnimatedText("web app using Streamlit",
            speed: Duration(milliseconds: 100)),
        TyperAnimatedText("Exploring the Evolution of Linux model",
            speed: Duration(milliseconds: 100)),
      ],
    );
  }
}

class FlutterCodedText2 extends StatelessWidget {
  const FlutterCodedText2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: "<",
        children: [
          TextSpan(
            text: "Data Science",
            style: TextStyle(
              color: primaryColor,
            ),
          ),
          TextSpan(text: ">"),
        ],
      ),
    );
  }
}
