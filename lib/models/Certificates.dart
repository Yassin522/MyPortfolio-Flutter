import 'package:flutter/material.dart';

class Certificates {
  final String name, review, userPic;
  final int id;
  final Color color;

  Certificates(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

// List of demo feedbacks
List<Certificates> certificates = [
  Certificates(
    id: 1,
    name: "ICPC-ACM",
    review:
        "12th place at The 2020 Al-Baath and Hama university contest.\nRanked 19th in the 2022 ICPC Damascus University Collegiate Programming Contest.\nHonorable Mention at The 2021 Damascus Collegiate Programming Contest.\n146th place at The 2021 ACPC Kickoff Online Individual Contest.",
    userPic: "assets/images/hhh.png",
    color: Color(0xFFFFF3DD),
  ),
  Certificates(
    id: 2,
    name: "Coursera",
    review:
        'Machine Learning Specialization\nVersion Control with Git.\n Build Photo Gallery Mobile App With Flutter\n How to Write a Resume (Project-Centered Course)\nCreating an Interactive Story with Flutter.\nIntroduction to Game Development.\n Cryptography and Information Theory\nProgramming for Everybody (Getting Started with Python)',
    userPic: "assets/images/2048px-Coursera-Logo_600x600.svg.png",
    color: Colors.white,
  ),
  Certificates(
    id: 3,
    name: "DataCamp",
    review:
        "Introduction to TensorFlow\nData Manipulation with pandas\nIntroduction to Python\nPython Data Science Toolbox (Part 1)\nUnderstanding Data Science\n",
    userPic: "assets/images/1603188329234.jpeg",
    color: Color(0xFFFFF3DD),
  ),
  Certificates(
    id: 4,
    name: "Google",
    review:
        "Google Hash Code 2022\nGoogle Code Jam 2022\nGoogle Kick Start 2022",
    userPic: "assets/images/images.png",
    color: Color(0xFFFFF3DD),
  ),
  Certificates(
    id: 5,
    name: "HackeRank",
    review: "Problem Solving (Basic)\nProblem Solving (Intermediate)",
    userPic: "assets/images/HackerRank_Icon-1000px.png",
    color: Color(0xFFFFF3DD),
  ),
];
