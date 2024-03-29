import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        KnowledgeText(
          text: "Python",
        ),
        KnowledgeText(
          text: "Flutter, Dart",
        ),
        KnowledgeText(
          text: "Competitive Programming",
        ),
        KnowledgeText(
          text: "Git , Github",
        ),
        KnowledgeText(
          text: "Machine Learning",
        ),
        KnowledgeText(
          text: "Data Science",
        ),
        KnowledgeText(
          text: "OOP, clean code",
        ),
         
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/check.svg"),
          SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
