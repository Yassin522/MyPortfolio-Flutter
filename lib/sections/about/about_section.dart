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
                      "CS student at the Faculty of Information Engineering at Damascus University also I am a competitive programmer, skilled in problem solving, algorithms and data structures, Volunteer @RBCs team to help people learn skills of Information Technology Engineering",
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
                      "Flutter developer\nI have developed expertise in a range of technical skills including Firebase, version control with Git and GitHub, and connecting Flutter applications to backends. My objective is to continue applying these abilities as a Flutter developer while also learning new skills in the field of mobile application development.",
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
                      "I am particularly interested in the field of artificial intelligence (AI). I have had the opportunity to study the principles of machine learning and explore the many applications of AI in a variety of contexts. I am particularly interested in the ways that AI can be used to improve decision-making, automate processes, and drive innovation.\nI have gained experience in machine learning through courses focused on topics such as supervised and unsupervised learning, model evaluation, and deep learning. These courses have given me the opportunity to apply my programming skills to the field of machine learning, and have prepared me to tackle complex data-driven problems and projects.",
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
              InkWell(
                onTap: _launchURL3,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/R.png",
                      height: 30,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding),
              InkWell(
                onTap: _launchURL4,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/R (1).png",
                      height: 30,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
              SizedBox(width: kDefaultPadding),
              InkWell(
                onTap: _launchURL,
                child: Row(
                  children: [
                    Image.asset(
                      "assets/images/linkedin2.png",
                      height: 30,
                      color: Colors.blue,
                    ),
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
      'https://drive.google.com/file/d/1fktibR3W6WnGPUkUY1bSvSnhk-KaMLcr/view?usp=drive_link';
  String _url3 =
      'https://www.kaggle.com/yassinabdulmahdi/Home?isEditing=False&verifyPhone=False';
  String _url4 = 'https://github.com/Yassin522';

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void _launchURL2() async {
    if (!await launch(_url2)) throw 'Could not launch $_url2';
  }

  void _launchURL3() async {
    if (!await launch(_url2)) throw 'Could not launch $_url3';
  }

  void _launchURL4() async {
    if (!await launch(_url2)) throw 'Could not launch $_url4';
  }
}
