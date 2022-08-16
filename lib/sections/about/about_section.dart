import 'package:flutter/material.dart';
import 'package:my_profile/Components/default_button.dart';
import 'package:my_profile/Components/my_outline_button.dart';
import 'package:my_profile/constants.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      constraints: BoxConstraints(maxWidth: 1000),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Third year student in the Faculty of Information Engineering at Damascus University also I am a competitive programmer, skilled in problem solving, algorithms and data structures, Volunteer @RBCs team to help people learn skills of Information Technology Engineering",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ExperienceCard(numOfExp: "01"),
              Expanded(
                child: AboutSectionText(
                  text:
                      "Flutter developer\nMy experience includes Firebase Auth, Dart, Local Storage, version control such as Git and GitHub\nConnecting Flutter applications to back-ends, Bloc, Getx.\nGood knowledge of OOPs Concepts",
                ),
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: _launchURL,
                child: Row(
                  children: [
                    Image.asset("assets/images/hand.png", height: 30),
                    SizedBox(width: kDefaultPadding),
                    Text("Hire Me!      "),
                  ],
                ),
              ),
              // SizedBox(width: kDefaultPadding * 1.5),
              InkWell(
                onTap: _launchURL2,
                child: Row(
                  children: [
                    Image.asset("assets/images/download.png", height: 30),
                    SizedBox(width: kDefaultPadding),
                    Text("Download CV      "),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _url = 'https://www.linkedin.com/in/yassin-abdulmahdi/';
  String _url2 =
      'https://drive.google.com/file/d/1-upu-fl8j4K-43j2Y4N8crT-ELSaGZOP/view?usp=sharing';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchURL2() async {
    if (!await launch(_url2)) throw 'Could not launch $_url';
  }
}
