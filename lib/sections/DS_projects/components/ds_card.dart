import 'package:flutter/material.dart';
import 'package:my_profile/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../models/DSprojectsModel.dart';

class DSprojectsCard extends StatefulWidget {
  const DSprojectsCard({
    required this.index,
    required this.press,
  });

  final int index;
  final Function press;

  @override
  State<DSprojectsCard> createState() => _DSprojectsCardState(
        press: press,
        index: index,
      );
}

class _DSprojectsCardState extends State<DSprojectsCard> {
  _DSprojectsCardState({
    required this.press,
    required this.index,
  });

  final Function press;
  final int index;

  List recents = [
    'https://github.com/Yassin522/Interactive-Drawing-Education-System-for-Children',
    'https://github.com/Yassin522/My-webpage-using-streamlit',
    'https://github.com/Yassin522/Data-Sceince-Projects/tree/main/Heartbeat-Categorization',
    'https://github.com/Yassin522/Data-Sceince-Projects/tree/main/Exploring-the-Evolution-of-Linux',
    'https://github.com/Yassin522/Data-Sceince-Projects/tree/main/Give%20Life_%20Predict%20Blood%20Donations',
  ];

  void _launchURL() async {
    if (!await launch(recents[index])) throw 'Could not launch ';
  }

  Duration duration = Duration(milliseconds: 200);
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {},
        hoverColor: Colors.transparent,
        onHover: (value) {
          setState(() {
            isHover = value;
          });
        },
        child: AnimatedContainer(
          duration: duration,
          margin: EdgeInsets.only(top: kDefaultPadding * 3),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          height: 340,
          width: 300,
          decoration: BoxDecoration(
            color: dsproject[widget.index].color,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [if (isHover) kDefaultCardShadow],
          ),
          child: Column(
            children: [
              Transform.translate(
                offset: Offset(0, -20),
                child: AnimatedContainer(
                  duration: duration,
                  height: 100,
                  width: 145,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 5),
                    boxShadow: [if (!isHover) kDefaultCardShadow],
                    image: DecorationImage(
                      image: AssetImage(dsproject[widget.index].userPic),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Text(
                dsproject[widget.index].review,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  fontStyle: FontStyle.italic,
                  height: 1.5,
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              Text(
                dsproject[widget.index].name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    fontSize: 11),
              ),
              SizedBox(height: 5),
              InkWell(
                onTap: _launchURL,
                child: Text(
                  "Github | Linkedin link",
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.red,
                      fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
