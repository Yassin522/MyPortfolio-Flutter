import 'package:flutter/material.dart';

class DSProject {
  final String name, review, userPic;
  final int id;
  final Color color;

  DSProject(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

List<DSProject> dsproject = [
  DSProject(
    id: 1,
    name: "Web page using Stramlit",
    review:
        "I just tried to build a web page using the powerful Python library, Streamlit. This tool provides intuitive and interactive insights into complex data sets. The end result is a high-quality, web-based application that is accessible to users of all technical levels.",
    userPic: "assets/images/download.jpeg",
    color: Color(0xFFFFF3DD),
  ),
];
